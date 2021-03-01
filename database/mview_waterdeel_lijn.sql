DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_waterdeel_lijn;

CREATE MATERIALIZED VIEW bgt.bgt_vw_waterdeel_lijn
TABLESPACE pg_default
AS SELECT
 		"BGTPLUS_KDL_duiker_L".identificatie_lokaalid || 'BGTPLUS_KDL_duiker_L' as identificatie_lokaalid,
    "BGTPLUS_KDL_duiker_L".plus_type as type,
		ST_makeValid(    "BGTPLUS_KDL_duiker_L".geometrie) as geometrie,
    "BGTPLUS_KDL_duiker_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16 as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGTPLUS_KDL_duiker_L"
  WHERE  1=1

/* --- KBK10 ---- */
  UNION
  SELECT
  	"WDL_duiker"."WDL_dui_ID"::text ||'-'|| 'WDL_duiker' as identificatie_lokaalid,
  	'duiker' as type,
  	ST_makeValid(        "WDL_duiker".geom) as geometrie,
  	0  as relatievehoogteligging, 
  	'kbk10' as bron,
  	15  as minzoom,
  	15  as maxzoom
  FROM
  	kbk10."WDL_duiker"
  WHERE 1 = 1

  UNION
  SELECT
  	"WDL_smal_water_tot_3m"."WDL_sma_ID"::text ||'-'|| 'WDL_smal_water_tot_3m' as identificatie_lokaalid,
  	'smal_water_tot_3m' as type,
  	ST_makeValid(        "WDL_smal_water_tot_3m".geom) as geometrie,
  	0  as relatievehoogteligging,
  	'kbk10' as bron,
  	15  as minzoom,
  	15  as maxzoom
  FROM
  	kbk10."WDL_smal_water_tot_3m"
  WHERE 1 = 1

  UNION
  SELECT
  	"WDL_smal_water_3_tot_6m"."WDL_sma_ID"::text ||'-'|| 'WDL_smal_water_3_tot_6m' as identificatie_lokaalid,
  	'smal_water_3_tot_6m' as type,
  	ST_makeValid(        "WDL_smal_water_3_tot_6m".geom) as geometrie,
  	0  as relatievehoogteligging, 
  	'kbk10' as bron,
  	14  as minzoom,
  	15  as maxzoom
  FROM
  	kbk10."WDL_smal_water_3_tot_6m"
  WHERE 1 = 1

/* --- KBK50 ---- */

 UNION  
 SELECT
 		"WDL_brede_waterloop".ogc_fid::text || 'WDL_brede_waterloop' as identificatie_lokaal_id,
    'brede_waterloop' as type,
		ST_makeValid(    "WDL_brede_waterloop".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	12 as minzoom, 
 	 	13 as maxzoom
   FROM kbk50."WDL_brede_waterloop"
  WHERE 1=1

 UNION  
 SELECT
 		"WDL_smalle_waterloop".ogc_fid::text || 'WDL_smalle_waterloop' as identificatie_lokaal_id,
    'smalle_waterloop' as type,
		ST_makeValid(    "WDL_smalle_waterloop".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	12 as minzoom, 
 	 	13 as maxzoom
   FROM kbk50."WDL_smalle_waterloop"
  WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_waterdeel_lijn_geom_idx ON bgt.bgt_vw_waterdeel_lijn USING gist (geometrie);