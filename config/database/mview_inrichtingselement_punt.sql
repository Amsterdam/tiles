DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_inrichtingselement_punt;

CREATE MATERIALIZED VIEW bgt.bgt_vw_inrichtingselement_punt
TABLESPACE pg_default
AS SELECT
		"BGTPLUS_BAK_afvalbak".identificatie_lokaalid || 'BGTPLUS_BAK_afvalbak' as identificatie_lokaalid,
    "BGTPLUS_BAK_afvalbak".plus_type as type,
		ST_makeValid(    "BGTPLUS_BAK_afvalbak".geometrie) as geometrie,
    "BGTPLUS_BAK_afvalbak".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BAK_afvalbak"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_BAK_afval_apart_plaats".identificatie_lokaalid || 'BGTPLUS_BAK_afval_apart_plaats' as identificatie_lokaalid,
    "BGTPLUS_BAK_afval_apart_plaats".plus_type as type,
		ST_makeValid(    "BGTPLUS_BAK_afval_apart_plaats".geometrie) as geometrie,
    "BGTPLUS_BAK_afval_apart_plaats".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BAK_afval_apart_plaats"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_ISE_onbekend".identificatie_lokaalid || 'BGTPLUS_ISE_onbekend' as identificatie_lokaalid,
    "BGTPLUS_ISE_onbekend".plus_type as type,
		ST_makeValid(    "BGTPLUS_ISE_onbekend".geometrie) as geometrie,
    "BGTPLUS_ISE_onbekend".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_ISE_onbekend"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_ISE_pomp".identificatie_lokaalid || 'BGTPLUS_ISE_pomp' as identificatie_lokaalid,
    "BGTPLUS_ISE_pomp".plus_type as type,
		ST_makeValid(    "BGTPLUS_ISE_pomp".geometrie) as geometrie,
    "BGTPLUS_ISE_pomp".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_ISE_pomp"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_cai-kast".identificatie_lokaalid || 'BGTPLUS_KST_cai-kast' as identificatie_lokaalid,
    "BGTPLUS_KST_cai-kast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_cai-kast".geometrie) as geometrie,
    "BGTPLUS_KST_cai-kast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_cai-kast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_elektrakast".identificatie_lokaalid || 'BGTPLUS_KST_elektrakast' as identificatie_lokaalid,
    "BGTPLUS_KST_elektrakast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_elektrakast".geometrie) as geometrie,
    "BGTPLUS_KST_elektrakast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_elektrakast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_onbekend".identificatie_lokaalid || 'BGTPLUS_KST_onbekend' as identificatie_lokaalid,
    "BGTPLUS_KST_onbekend".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_onbekend".geometrie) as geometrie,
    "BGTPLUS_KST_onbekend".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_onbekend"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_lichtmast".identificatie_lokaalid || 'BGTPLUS_PAL_lichtmast' as identificatie_lokaalid,
    "BGTPLUS_PAL_lichtmast".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_lichtmast".geometrie) as geometrie,
    "BGTPLUS_PAL_lichtmast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_lichtmast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_brandkraan_-put".identificatie_lokaalid || 'BGTPLUS_PUT_brandkraan_-put' as identificatie_lokaalid,
    "BGTPLUS_PUT_brandkraan_-put".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_brandkraan_-put".geometrie) as geometrie,
    "BGTPLUS_PUT_brandkraan_-put".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_brandkraan_-put"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_inspectie-_rioolput".identificatie_lokaalid || 'BGTPLUS_PUT_inspectie-_rioolput' as identificatie_lokaalid,
    "BGTPLUS_PUT_inspectie-_rioolput".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_inspectie-_rioolput".geometrie) as geometrie,
    "BGTPLUS_PUT_inspectie-_rioolput".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_inspectie-_rioolput"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_kolk".identificatie_lokaalid || 'BGTPLUS_PUT_kolk' as identificatie_lokaalid,
    "BGTPLUS_PUT_kolk".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_kolk".geometrie) as geometrie,
    "BGTPLUS_PUT_kolk".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_kolk"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_abri".identificatie_lokaalid || 'BGTPLUS_SMR_abri' as identificatie_lokaalid,
    "BGTPLUS_SMR_abri".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_abri".geometrie) as geometrie,
    "BGTPLUS_SMR_abri".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_abri"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_betaalautomaat".identificatie_lokaalid || 'BGTPLUS_SMR_betaalautomaat' as identificatie_lokaalid,
    "BGTPLUS_SMR_betaalautomaat".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_betaalautomaat".geometrie) as geometrie,
    "BGTPLUS_SMR_betaalautomaat".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_betaalautomaat"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_fietsenrek".identificatie_lokaalid || 'BGTPLUS_SMR_fietsenrek' as identificatie_lokaalid,
    "BGTPLUS_SMR_fietsenrek".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_fietsenrek".geometrie) as geometrie,
    "BGTPLUS_SMR_fietsenrek".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_fietsenrek"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_herdenkingsmonument".identificatie_lokaalid || 'BGTPLUS_SMR_herdenkingsmonument' as identificatie_lokaalid,
    "BGTPLUS_SMR_herdenkingsmonument".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_herdenkingsmonument".geometrie) as geometrie,
    "BGTPLUS_SMR_herdenkingsmonument".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_herdenkingsmonument"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_kunstobject".identificatie_lokaalid || 'BGTPLUS_SMR_kunstobject' as identificatie_lokaalid,
    "BGTPLUS_SMR_kunstobject".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_kunstobject".geometrie) as geometrie,
    "BGTPLUS_SMR_kunstobject".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_kunstobject"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_openbaar_toilet".identificatie_lokaalid || 'BGTPLUS_SMR_openbaar_toilet' as identificatie_lokaalid,
    "BGTPLUS_SMR_openbaar_toilet".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_openbaar_toilet".geometrie) as geometrie,
    "BGTPLUS_SMR_openbaar_toilet".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_openbaar_toilet"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_reclamezuil".identificatie_lokaalid || 'BGTPLUS_SMR_reclamezuil' as identificatie_lokaalid,
    "BGTPLUS_SMR_reclamezuil".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_reclamezuil".geometrie) as geometrie,
    "BGTPLUS_SMR_reclamezuil".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_reclamezuil"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_telefooncel".identificatie_lokaalid || 'BGTPLUS_SMR_telefooncel' as identificatie_lokaalid,
    "BGTPLUS_SMR_telefooncel".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_telefooncel".geometrie) as geometrie,
    "BGTPLUS_SMR_telefooncel".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_telefooncel"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_VGT_boom".identificatie_lokaalid || 'BGTPLUS_VGT_boom' as identificatie_lokaalid,
    "BGTPLUS_VGT_boom".plus_type as type,
		ST_makeValid(    "BGTPLUS_VGT_boom".geometrie) as geometrie,
    "BGTPLUS_VGT_boom".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_VGT_boom"
  WHERE 1 = 1
UNION
 SELECT
		"BGT_KDL_hoogspanningsmast_P".identificatie_lokaalid || 'BGT_KDL_hoogspanningsmast_P' as identificatie_lokaalid,
    "BGT_KDL_hoogspanningsmast_P".bgt_type as type,
		ST_makeValid(    "BGT_KDL_hoogspanningsmast_P".geometrie) as geometrie,
    "BGT_KDL_hoogspanningsmast_P".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGT_KDL_hoogspanningsmast_P"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_BRD_informatiebord".identificatie_lokaalid || 'BGTPLUS_BRD_informatiebord' as identificatie_lokaalid,
    "BGTPLUS_BRD_informatiebord".plus_type as type,
		ST_makeValid(    "BGTPLUS_BRD_informatiebord".geometrie) as geometrie,
    "BGTPLUS_BRD_informatiebord".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BRD_informatiebord"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_BRD_reclamebord".identificatie_lokaalid || 'BGTPLUS_BRD_reclamebord' as identificatie_lokaalid,
    "BGTPLUS_BRD_reclamebord".plus_type as type,
		ST_makeValid(    "BGTPLUS_BRD_reclamebord".geometrie) as geometrie,
    "BGTPLUS_BRD_reclamebord".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BRD_reclamebord"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_BRD_straatnaambord".identificatie_lokaalid || 'BGTPLUS_BRD_straatnaambord' as identificatie_lokaalid,
    "BGTPLUS_BRD_straatnaambord".plus_type as type,
		ST_makeValid(    "BGTPLUS_BRD_straatnaambord".geometrie) as geometrie,
    "BGTPLUS_BRD_straatnaambord".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BRD_straatnaambord"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_BRD_verkeersbord".identificatie_lokaalid || 'BGTPLUS_BRD_verkeersbord' as identificatie_lokaalid,
    "BGTPLUS_BRD_verkeersbord".plus_type as type,
		ST_makeValid(    "BGTPLUS_BRD_verkeersbord".geometrie) as geometrie,
    "BGTPLUS_BRD_verkeersbord".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BRD_verkeersbord"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_BRD_verklikker_transportleiding".identificatie_lokaalid || 'BGTPLUS_BRD_verklikker_transportleiding' as identificatie_lokaalid,
    "BGTPLUS_BRD_verklikker_transportleiding".plus_type as type,
		ST_makeValid(    "BGTPLUS_BRD_verklikker_transportleiding".geometrie) as geometrie,
    "BGTPLUS_BRD_verklikker_transportleiding".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BRD_verklikker_transportleiding"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_BRD_wegwijzer".identificatie_lokaalid || 'BGTPLUS_BRD_wegwijzer' as identificatie_lokaalid,
    "BGTPLUS_BRD_wegwijzer".plus_type as type,
		ST_makeValid(    "BGTPLUS_BRD_wegwijzer".geometrie) as geometrie,
    "BGTPLUS_BRD_wegwijzer".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_BRD_wegwijzer"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_gaskast".identificatie_lokaalid || 'BGTPLUS_KST_gaskast' as identificatie_lokaalid,
    "BGTPLUS_KST_gaskast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_gaskast".geometrie) as geometrie,
    "BGTPLUS_KST_gaskast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_gaskast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_gms_kast".identificatie_lokaalid || 'BGTPLUS_KST_gms_kast' as identificatie_lokaalid,
    "BGTPLUS_KST_gms_kast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_gms_kast".geometrie) as geometrie,
    "BGTPLUS_KST_gms_kast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_gms_kast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_openbare_verlichtingkast".identificatie_lokaalid || 'BGTPLUS_KST_openbare_verlichtingkast' as identificatie_lokaalid,
    "BGTPLUS_KST_openbare_verlichtingkast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_openbare_verlichtingkast".geometrie) as geometrie,
    "BGTPLUS_KST_openbare_verlichtingkast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_openbare_verlichtingkast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_rioolkast".identificatie_lokaalid || 'BGTPLUS_KST_rioolkast' as identificatie_lokaalid,
    "BGTPLUS_KST_rioolkast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_rioolkast".geometrie) as geometrie,
    "BGTPLUS_KST_rioolkast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_rioolkast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_telecom_kast".identificatie_lokaalid || 'BGTPLUS_KST_telecom_kast' as identificatie_lokaalid,
    "BGTPLUS_KST_telecom_kast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_telecom_kast".geometrie) as geometrie,
    "BGTPLUS_KST_telecom_kast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_telecom_kast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_telkast".identificatie_lokaalid || 'BGTPLUS_KST_telkast' as identificatie_lokaalid,
    "BGTPLUS_KST_telkast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_telkast".geometrie) as geometrie,
    "BGTPLUS_KST_telkast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_telkast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_KST_verkeersregelinstallatiekast".identificatie_lokaalid || 'BGTPLUS_KST_verkeersregelinstallatiekast' as identificatie_lokaalid,
    "BGTPLUS_KST_verkeersregelinstallatiekast".plus_type as type,
		ST_makeValid(    "BGTPLUS_KST_verkeersregelinstallatiekast".geometrie) as geometrie,
    "BGTPLUS_KST_verkeersregelinstallatiekast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_KST_verkeersregelinstallatiekast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_MST_onbekend".identificatie_lokaalid || 'BGTPLUS_MST_onbekend' as identificatie_lokaalid,
    "BGTPLUS_MST_onbekend".plus_type as type,
		ST_makeValid(    "BGTPLUS_MST_onbekend".geometrie) as geometrie,
    "BGTPLUS_MST_onbekend".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_MST_onbekend"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_MST_zendmast".identificatie_lokaalid || 'BGTPLUS_MST_zendmast' as identificatie_lokaalid,
    "BGTPLUS_MST_zendmast".plus_type as type,
		ST_makeValid(    "BGTPLUS_MST_zendmast".geometrie) as geometrie,
    "BGTPLUS_MST_zendmast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_MST_zendmast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_afsluitpaal".identificatie_lokaalid || 'BGTPLUS_PAL_afsluitpaal' as identificatie_lokaalid,
    "BGTPLUS_PAL_afsluitpaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_afsluitpaal".geometrie) as geometrie,
    "BGTPLUS_PAL_afsluitpaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_afsluitpaal"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_drukknoppaal".identificatie_lokaalid || 'BGTPLUS_PAL_drukknoppaal' as identificatie_lokaalid,
    "BGTPLUS_PAL_drukknoppaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_drukknoppaal".geometrie) as geometrie,
    "BGTPLUS_PAL_drukknoppaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_drukknoppaal"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_haltepaal".identificatie_lokaalid || 'BGTPLUS_PAL_haltepaal' as identificatie_lokaalid,
    "BGTPLUS_PAL_haltepaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_haltepaal".geometrie) as geometrie,
    "BGTPLUS_PAL_haltepaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_haltepaal"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_hectometerpaal".identificatie_lokaalid || 'BGTPLUS_PAL_hectometerpaal' as identificatie_lokaalid,
    "BGTPLUS_PAL_hectometerpaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_hectometerpaal".geometrie) as geometrie,
    "BGTPLUS_PAL_hectometerpaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_hectometerpaal"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_poller".identificatie_lokaalid || 'BGTPLUS_PAL_poller' as identificatie_lokaalid,
    "BGTPLUS_PAL_poller".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_poller".geometrie) as geometrie,
    "BGTPLUS_PAL_poller".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_poller"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_telpaal".identificatie_lokaalid || 'BGTPLUS_PAL_telpaal' as identificatie_lokaalid,
    "BGTPLUS_PAL_telpaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_telpaal".geometrie) as geometrie,
    "BGTPLUS_PAL_telpaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_telpaal"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_verkeersbordpaal".identificatie_lokaalid || 'BGTPLUS_PAL_verkeersbordpaal' as identificatie_lokaalid,
    "BGTPLUS_PAL_verkeersbordpaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_verkeersbordpaal".geometrie) as geometrie,
    "BGTPLUS_PAL_verkeersbordpaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_verkeersbordpaal"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_verkeersregelinstallatiepaal".identificatie_lokaalid || 'BGTPLUS_PAL_verkeersregelinstallatiepaal' as identificatie_lokaalid,
    "BGTPLUS_PAL_verkeersregelinstallatiepaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_verkeersregelinstallatiepaal".geometrie) as geometrie,
    "BGTPLUS_PAL_verkeersregelinstallatiepaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_verkeersregelinstallatiepaal"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PAL_vlaggenmast".identificatie_lokaalid || 'BGTPLUS_PAL_vlaggenmast' as identificatie_lokaalid,
    "BGTPLUS_PAL_vlaggenmast".plus_type as type,
		ST_makeValid(    "BGTPLUS_PAL_vlaggenmast".geometrie) as geometrie,
    "BGTPLUS_PAL_vlaggenmast".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PAL_vlaggenmast"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_benzine-_olieput".identificatie_lokaalid || 'BGTPLUS_PUT_benzine-_olieput' as identificatie_lokaalid,
    "BGTPLUS_PUT_benzine-_olieput".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_benzine-_olieput".geometrie) as geometrie,
    "BGTPLUS_PUT_benzine-_olieput".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_benzine-_olieput"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_drainageput".identificatie_lokaalid || 'BGTPLUS_PUT_drainageput' as identificatie_lokaalid,
    "BGTPLUS_PUT_drainageput".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_drainageput".geometrie) as geometrie,
    "BGTPLUS_PUT_drainageput".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_drainageput"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_gasput".identificatie_lokaalid || 'BGTPLUS_PUT_gasput' as identificatie_lokaalid,
    "BGTPLUS_PUT_gasput".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_gasput".geometrie) as geometrie,
    "BGTPLUS_PUT_gasput".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_gasput"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_onbekend".identificatie_lokaalid || 'BGTPLUS_PUT_onbekend' as identificatie_lokaalid,
    "BGTPLUS_PUT_onbekend".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_onbekend".geometrie) as geometrie,
    "BGTPLUS_PUT_onbekend".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_onbekend"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_PUT_waterleidingput".identificatie_lokaalid || 'BGTPLUS_PUT_waterleidingput' as identificatie_lokaalid,
    "BGTPLUS_PUT_waterleidingput".plus_type as type,
		ST_makeValid(    "BGTPLUS_PUT_waterleidingput".geometrie) as geometrie,
    "BGTPLUS_PUT_waterleidingput".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_PUT_waterleidingput"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_bank".identificatie_lokaalid || 'BGTPLUS_SMR_bank' as identificatie_lokaalid,
    "BGTPLUS_SMR_bank".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_bank".geometrie) as geometrie,
    "BGTPLUS_SMR_bank".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_bank"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_brievenbus".identificatie_lokaalid || 'BGTPLUS_SMR_brievenbus' as identificatie_lokaalid,
    "BGTPLUS_SMR_brievenbus".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_brievenbus".geometrie) as geometrie,
    "BGTPLUS_SMR_brievenbus".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_brievenbus"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_fietsenkluis".identificatie_lokaalid || 'BGTPLUS_SMR_fietsenkluis' as identificatie_lokaalid,
    "BGTPLUS_SMR_fietsenkluis".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_fietsenkluis".geometrie) as geometrie,
    "BGTPLUS_SMR_fietsenkluis".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_fietsenkluis"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_lichtpunt".identificatie_lokaalid || 'BGTPLUS_SMR_lichtpunt' as identificatie_lokaalid,
    "BGTPLUS_SMR_lichtpunt".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_lichtpunt".geometrie) as geometrie,
    "BGTPLUS_SMR_lichtpunt".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_lichtpunt"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_slagboom".identificatie_lokaalid || 'BGTPLUS_SMR_slagboom' as identificatie_lokaalid,
    "BGTPLUS_SMR_slagboom".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_slagboom".geometrie) as geometrie,
    "BGTPLUS_SMR_slagboom".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_slagboom"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SMR_speelvoorziening".identificatie_lokaalid || 'BGTPLUS_SMR_speelvoorziening' as identificatie_lokaalid,
    "BGTPLUS_SMR_speelvoorziening".plus_type as type,
		ST_makeValid(    "BGTPLUS_SMR_speelvoorziening".geometrie) as geometrie,
    "BGTPLUS_SMR_speelvoorziening".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SMR_speelvoorziening"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SSR_camera".identificatie_lokaalid || 'BGTPLUS_SSR_camera' as identificatie_lokaalid,
    "BGTPLUS_SSR_camera".plus_type as type,
		ST_makeValid(    "BGTPLUS_SSR_camera".geometrie) as geometrie,
    "BGTPLUS_SSR_camera".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SSR_camera"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SSR_flitser".identificatie_lokaalid || 'BGTPLUS_SSR_flitser' as identificatie_lokaalid,
    "BGTPLUS_SSR_flitser".plus_type as type,
		ST_makeValid(    "BGTPLUS_SSR_flitser".geometrie) as geometrie,
    "BGTPLUS_SSR_flitser".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SSR_flitser"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_SSR_waterstandmeter".identificatie_lokaalid || 'BGTPLUS_SSR_waterstandmeter' as identificatie_lokaalid,
    "BGTPLUS_SSR_waterstandmeter".plus_type as type,
		ST_makeValid(    "BGTPLUS_SSR_waterstandmeter".geometrie) as geometrie,
    "BGTPLUS_SSR_waterstandmeter".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_SSR_waterstandmeter"
  WHERE 1 = 1
UNION
 SELECT
		"BGTPLUS_WDI_meerpaal".identificatie_lokaalid || 'BGTPLUS_WDI_meerpaal' as identificatie_lokaalid,
    "BGTPLUS_WDI_meerpaal".plus_type as type,
		ST_makeValid(    "BGTPLUS_WDI_meerpaal".geometrie) as geometrie,
    "BGTPLUS_WDI_meerpaal".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL  as maxzoom
   FROM bgt."BGTPLUS_WDI_meerpaal"
  WHERE 1 = 1
WITH DATA;

-- View indexes:
	CREATE INDEX bgt_vw_inrichtingselement_punt_geom_idx ON bgt.bgt_vw_inrichtingselement_punt USING gist (geometrie);