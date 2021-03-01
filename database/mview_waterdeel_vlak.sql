DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_waterdeel_vlak;

CREATE MATERIALIZED VIEW bgt.bgt_vw_waterdeel_vlak
TABLESPACE pg_default
AS SELECT
 		"BGTPLUS_KDL_duiker_V".identificatie_lokaalid || 'BGTPLUS_KDL_duiker_V' as identificatie_lokaalid,
    "BGTPLUS_KDL_duiker_V".plus_type as type,
		ST_makeValid(    "BGTPLUS_KDL_duiker_V". geometrie) as geometrie, 
    "BGTPLUS_KDL_duiker_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGTPLUS_KDL_duiker_V"
  WHERE 1=1
UNION
 SELECT
 		"BGT_WDL_greppel_droge_sloot".identificatie_lokaalid || 'BGT_WDL_greppel_droge_sloot' as identificatie_lokaalid,
    "BGT_WDL_greppel_droge_sloot".bgt_type as type,
		ST_makeValid(    "BGT_WDL_greppel_droge_sloot". geometrie) as geometrie, 
    "BGT_WDL_greppel_droge_sloot".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_WDL_greppel_droge_sloot"
  WHERE 1=1
UNION
 SELECT
 		"BGT_WDL_waterloop".identificatie_lokaalid ||'-'|| "BGT_WDL_waterloop".tijdstipregistratie ||'-'|| 'BGT_WDL_waterloop' as identificatie_lokaalid,
    "BGT_WDL_waterloop".bgt_type as type,
		ST_makeValid(    "BGT_WDL_waterloop". geometrie) as geometrie, 
    "BGT_WDL_waterloop".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_WDL_waterloop"
  WHERE 1=1
UNION
 SELECT
 		"BGT_WDL_watervlakte".identificatie_lokaalid || 'BGT_WDL_watervlakte' as identificatie_lokaalid,
    "BGT_WDL_watervlakte".bgt_type as type,
		ST_makeValid(    "BGT_WDL_watervlakte". geometrie) as geometrie, 
    "BGT_WDL_watervlakte".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_WDL_watervlakte"
  WHERE 1=1

  /* KBK10 */

 UNION 
 SELECT
 		"WDL_breed_water".ogc_fid::text || 'WDL_breed_water' as identificatie_lokaal_id,
    'breed_water' as type,
		ST_makeValid(    "WDL_breed_water".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14  as minzoom, 
 	 	15  as maxzoom
   FROM kbk10."WDL_breed_water"
  WHERE 1=1
  UNION 
   SELECT
		"WDL_haven".ogc_fid::text || 'WDL_haven_kbk10' as identificatie_lokaal_id,
    'haven' as type,
		ST_makeValid(    "WDL_haven".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14  as minzoom, 
 	 	15  as maxzoom
   FROM kbk10."WDL_haven"
  WHERE 1=1

/* --- KBK50 ---- */

 UNION 
 SELECT
 		"WDL_wateroppervlak".ogc_fid::text || 'WDL_wateroppervlak' as identificatie_lokaal_id,
    'breed_water' as type,
		ST_makeValid(    "WDL_wateroppervlak".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8  as minzoom, 
 	 	13  as maxzoom
   FROM kbk50."WDL_wateroppervlak"
  WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_waterdeel_vlak_geom_idx ON bgt.bgt_vw_waterdeel_vlak USING gist ( geometrie)
