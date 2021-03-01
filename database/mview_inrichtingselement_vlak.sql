DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_inrichtingselement_vlak;

CREATE MATERIALIZED VIEW bgt.bgt_vw_inrichtingselement_vlak
TABLESPACE pg_default
AS SELECT
		"BGTPLUS_KDL_keermuur".identificatie_lokaalid || 'BGTPLUS_KDL_keermuur' as identificatie_lokaalid,
    "BGTPLUS_KDL_keermuur".plus_type as type,
		ST_makeValid(    "BGTPLUS_KDL_keermuur". geometrie) as geometrie, 
     "BGTPLUS_KDL_keermuur".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGTPLUS_KDL_keermuur"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_OSDG_muur_V".identificatie_lokaalid || 'BGTPLUS_OSDG_muur_V' as identificatie_lokaalid,
     "BGTPLUS_OSDG_muur_V".plus_type as type,
		ST_makeValid(    "BGTPLUS_OSDG_muur_V". geometrie) as geometrie, 
     "BGTPLUS_OSDG_muur_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGTPLUS_OSDG_muur_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_VGT_haag_V".identificatie_lokaalid || 'BGTPLUS_VGT_haag_V' as identificatie_lokaalid,
    "BGTPLUS_VGT_haag_V".plus_type as type,
		ST_makeValid(    "BGTPLUS_VGT_haag_V". geometrie) as geometrie, 
     "BGTPLUS_VGT_haag_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGTPLUS_VGT_haag_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_boomspiegel_V".identificatie_lokaalid || 'BGTPLUS_WGI_boomspiegel_V' as identificatie_lokaalid,
    "BGTPLUS_WGI_boomspiegel_V".plus_type as type,
		ST_makeValid(    "BGTPLUS_WGI_boomspiegel_V". geometrie) as geometrie, 
     "BGTPLUS_WGI_boomspiegel_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGTPLUS_WGI_boomspiegel_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_rooster_V".identificatie_lokaalid || 'BGTPLUS_WGI_rooster_V' as identificatie_lokaalid,
    "BGTPLUS_WGI_rooster_V".plus_type as type,
		ST_makeValid(    "BGTPLUS_WGI_rooster_V". geometrie) as geometrie, 
     "BGTPLUS_WGI_rooster_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_rooster_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_wildrooster_V".identificatie_lokaalid || 'BGTPLUS_WGI_wildrooster_V' as identificatie_lokaalid,
    "BGTPLUS_WGI_wildrooster_V".plus_type as type,
		ST_makeValid(    "BGTPLUS_WGI_wildrooster_V". geometrie) as geometrie, 
     "BGTPLUS_WGI_wildrooster_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGTPLUS_WGI_wildrooster_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_gemaal".identificatie_lokaalid || 'BGT_KDL_gemaal' as identificatie_lokaalid,
    "BGT_KDL_gemaal".bgt_type as type,
		ST_makeValid(    "BGT_KDL_gemaal". geometrie) as geometrie, 
     "BGT_KDL_gemaal".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_KDL_gemaal"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_hoogspanningsmast_V".identificatie_lokaalid || 'BGT_KDL_hoogspanningsmast_V' as identificatie_lokaalid,
    "BGT_KDL_hoogspanningsmast_V".bgt_type as type,
		ST_makeValid(    "BGT_KDL_hoogspanningsmast_V". geometrie) as geometrie, 
     "BGT_KDL_hoogspanningsmast_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_KDL_hoogspanningsmast_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_sluis".identificatie_lokaalid || 'BGT_KDL_sluis' as identificatie_lokaalid,
    "BGT_KDL_sluis".bgt_type as type,
		ST_makeValid(    "BGT_KDL_sluis". geometrie) as geometrie, 
     "BGT_KDL_sluis".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_KDL_sluis"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_steiger".identificatie_lokaalid || 'BGT_KDL_steiger' as identificatie_lokaalid,
    "BGT_KDL_steiger".bgt_type as type,
		ST_makeValid(    "BGT_KDL_steiger". geometrie) as geometrie, 
     "BGT_KDL_steiger".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_KDL_steiger"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_stuw_V".identificatie_lokaalid || 'BGT_KDL_stuw_V' as identificatie_lokaalid,
    "BGT_KDL_stuw_V".bgt_type as type,
		ST_makeValid(    "BGT_KDL_stuw_V". geometrie) as geometrie, 
     "BGT_KDL_stuw_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_KDL_stuw_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_kademuur_V".identificatie_lokaalid || 'BGT_SDG_kademuur_V' as identificatie_lokaalid,
    "BGT_SDG_kademuur_V".bgt_type as type,
		ST_makeValid(    "BGT_SDG_kademuur_V". geometrie) as geometrie, 
     "BGT_SDG_kademuur_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_SDG_kademuur_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_muur_V".identificatie_lokaalid || 'BGT_SDG_muur_V' as identificatie_lokaalid,
    "BGT_SDG_muur_V".bgt_type as type,
		ST_makeValid(    "BGT_SDG_muur_V". geometrie) as geometrie, 
     "BGT_SDG_muur_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22  as maxzoom
   FROM bgt."BGT_SDG_muur_V"
  WHERE 1=1

    /* KBK10 */
  UNION
  SELECT
		"WDL_waterbassin".ogc_fid::text || 'WDL_waterbassin' as identificatie_lokaal_id,
    'waterbassin' as type,
		ST_makeValid(    "WDL_waterbassin".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
  FROM kbk10."WDL_waterbassin"
  WHERE 1=1
  UNION
   SELECT
		"TRN_aanlegsteiger".ogc_fid::text || 'TRN_aanlegsteiger_kbk10' as identificatie_lokaal_id,
    'aanlegsteiger' as type,
		ST_makeValid(    "TRN_aanlegsteiger".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
   FROM kbk10."TRN_aanlegsteiger"
  WHERE 1=1

/* ---- KBK50 ---- */

WITH DATA;

-- View indexes:
	 CREATE INDEX bgt_vw_inrichtingselement_vlak_geom_idx ON bgt.bgt_vw_inrichtingselement_vlak USING gist ( geometrie);
