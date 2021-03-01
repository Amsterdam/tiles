DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_terreindeel_vlak;

CREATE MATERIALIZED VIEW bgt.bgt_vw_terreindeel_vlak
TABLESPACE pg_default
AS SELECT
 		"BGT_BTRN_boomteelt".identificatie_lokaalid || 'BGT_BTRN_boomteelt' as identificatie_lokaalid,
    "BGT_BTRN_boomteelt".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_boomteelt".geometrie) as geometrie,
    "BGT_BTRN_boomteelt".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_boomteelt"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_bouwland".identificatie_lokaalid || 'BGT_BTRN_bouwland' as identificatie_lokaalid,
    "BGT_BTRN_bouwland".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_bouwland".geometrie) as geometrie,
    "BGT_BTRN_bouwland".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_bouwland"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_fruitteelt".identificatie_lokaalid || 'BGT_BTRN_fruitteelt' as identificatie_lokaalid,
    "BGT_BTRN_fruitteelt".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_fruitteelt".geometrie) as geometrie,
    "BGT_BTRN_fruitteelt".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_fruitteelt"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_gemengd_bos".identificatie_lokaalid || 'BGT_BTRN_gemengd_bos' as identificatie_lokaalid,
    "BGT_BTRN_gemengd_bos".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_gemengd_bos".geometrie) as geometrie,
    "BGT_BTRN_gemengd_bos".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_gemengd_bos"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_grasland_agrarisch".identificatie_lokaalid ||'-'||  "BGT_BTRN_grasland_agrarisch".tijdstipregistratie ||'-'||  'BGT_BTRN_grasland_agrarisch' as identificatie_lokaalid,
    "BGT_BTRN_grasland_agrarisch".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_grasland_agrarisch".geometrie) as geometrie,
    "BGT_BTRN_grasland_agrarisch".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_grasland_agrarisch"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_grasland_overig".identificatie_lokaalid ||'-'||  "BGT_BTRN_grasland_overig".tijdstipregistratie ||'-'|| 'BGT_BTRN_grasland_overig' as identificatie_lokaalid,
    "BGT_BTRN_grasland_overig".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_grasland_overig".geometrie) as geometrie,
    "BGT_BTRN_grasland_overig".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_grasland_overig"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_groenvoorziening".identificatie_lokaalid || 'BGT_BTRN_groenvoorziening' as identificatie_lokaalid,
    "BGT_BTRN_groenvoorziening".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_groenvoorziening".geometrie) as geometrie,
    "BGT_BTRN_groenvoorziening".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_groenvoorziening"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_houtwal".identificatie_lokaalid || 'BGT_BTRN_houtwal' as identificatie_lokaalid,
    "BGT_BTRN_houtwal".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_houtwal".geometrie) as geometrie,
    "BGT_BTRN_houtwal".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_houtwal"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_loofbos".identificatie_lokaalid || 'BGT_BTRN_loofbos' as identificatie_lokaalid,
    "BGT_BTRN_loofbos".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_loofbos".geometrie) as geometrie,
    "BGT_BTRN_loofbos".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_loofbos"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_moeras".identificatie_lokaalid || 'BGT_BTRN_moeras' as identificatie_lokaalid,
    "BGT_BTRN_moeras".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_moeras".geometrie) as geometrie,
    "BGT_BTRN_moeras".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_moeras"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_naaldbos".identificatie_lokaalid || 'BGT_BTRN_naaldbos' as identificatie_lokaalid,
    "BGT_BTRN_naaldbos".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_naaldbos".geometrie) as geometrie,
    "BGT_BTRN_naaldbos".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_naaldbos"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_rietland".identificatie_lokaalid || 'BGT_BTRN_rietland' as identificatie_lokaalid,
    "BGT_BTRN_rietland".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_rietland".geometrie) as geometrie,
    "BGT_BTRN_rietland".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_rietland"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_struiken".identificatie_lokaalid || 'BGT_BTRN_struiken' as identificatie_lokaalid,
    "BGT_BTRN_struiken".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_struiken".geometrie) as geometrie,
    "BGT_BTRN_struiken".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_struiken"
  WHERE 1=1
UNION
 SELECT
 		"BGT_KDL_perron".identificatie_lokaalid || 'BGT_KDL_perron' as identificatie_lokaalid,
    "BGT_KDL_perron".bgt_type as type,
		ST_makeValid(    "BGT_KDL_perron".geometrie) as geometrie,
    "BGT_KDL_perron".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_KDL_perron"
  WHERE 1=1
UNION
 SELECT
 		"BGT_KDL_strekdam".identificatie_lokaalid || 'BGT_KDL_strekdam' as identificatie_lokaalid,
    "BGT_KDL_strekdam".bgt_type as type,
		ST_makeValid(    "BGT_KDL_strekdam".geometrie) as geometrie,
    "BGT_KDL_strekdam".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_KDL_strekdam"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_erf".identificatie_lokaalid ||'-'||  	"BGT_OTRN_erf".tijdstipregistratie ||'-'|| 'BGT_OTRN_erf' as identificatie_lokaalid,
    "BGT_OTRN_erf".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_OTRN_erf".geometrie) as geometrie,
    "BGT_OTRN_erf".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_OTRN_erf"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_gesloten_verharding".identificatie_lokaalid || 'BGT_OTRN_gesloten_verharding' as identificatie_lokaalid,
    "BGT_OTRN_gesloten_verharding".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_OTRN_gesloten_verharding".geometrie) as geometrie,
    "BGT_OTRN_gesloten_verharding".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_OTRN_gesloten_verharding"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_half_verhard".identificatie_lokaalid || 'BGT_OTRN_half_verhard' as identificatie_lokaalid,
    "BGT_OTRN_half_verhard".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_OTRN_half_verhard".geometrie) as geometrie,
    "BGT_OTRN_half_verhard".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_OTRN_half_verhard"
  WHERE 1=1
UNION
 SELECT
 		 "BGT_OTRN_onverhard".identificatie_lokaalid || 'BGT_OTRN_onverhard' as identificatie_lokaalid,
    "BGT_OTRN_onverhard".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_OTRN_onverhard".geometrie) as geometrie,
    "BGT_OTRN_onverhard".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_OTRN_onverhard"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_open_verharding".identificatie_lokaalid || 'BGT_OTRN_open_verharding' as identificatie_lokaalid,
    "BGT_OTRN_open_verharding".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_OTRN_open_verharding".geometrie) as geometrie,
    "BGT_OTRN_open_verharding".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_OTRN_open_verharding"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_zand".identificatie_lokaalid || 'BGT_OTRN_zand' as identificatie_lokaalid,
    "BGT_OTRN_zand".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_OTRN_zand".geometrie) as geometrie,
    "BGT_OTRN_zand".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_OTRN_zand"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OWDL_oever_slootkant".identificatie_lokaalid ||'-'||  	"BGT_OWDL_oever_slootkant".tijdstipregistratie ||'-'|| 'BGT_OWDL_oever_slootkant' as identificatie_lokaalid,
    "BGT_OWDL_oever_slootkant".bgt_type as type,
		ST_makeValid(    "BGT_OWDL_oever_slootkant".geometrie) as geometrie,
    "BGT_OWDL_oever_slootkant".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_OWDL_oever_slootkant"
  WHERE 1=1
UNION
 SELECT
 		"BGT_WGL_spoorbaan".identificatie_lokaalid || 'BGT_WGL_spoorbaan' as identificatie_lokaalid,
    "BGT_WGL_spoorbaan".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_WGL_spoorbaan".geometrie) as geometrie,
    "BGT_WGL_spoorbaan".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_WGL_spoorbaan"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_heide".identificatie_lokaalid || 'BGT_BTRN_heide' as identificatie_lokaalid,
    "BGT_BTRN_heide".bgt_fysiekvoorkomen as type,
		ST_makeValid(    "BGT_BTRN_heide".geometrie) as geometrie,
    "BGT_BTRN_heide".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	22 as maxzoom
   FROM bgt."BGT_BTRN_heide"
  WHERE 1=1

    /* KBK10 */

  UNION
  SELECT
		"TRN_basaltblokken_steenglooiing".ogc_fid::text || 'TRN_basaltblokken_steenglooiing_kbk10' as identificatie_lokaal_id,
    'basaltblokken_steenglooiing' as type,
		ST_makeValid(    "TRN_basaltblokken_steenglooiing".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_basaltblokken_steenglooiing"
  UNION
  SELECT
		"TRN_grasland".ogc_fid::text || 'TRN_grasland_kbk10' as identificatie_lokaal_id,
    'grasland overig' as type,
		ST_makeValid(    "TRN_grasland".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_grasland"
  UNION 
  SELECT
		"TRN_akkerland".ogc_fid::text || 'TRN_akkerland_kbk10' as identificatie_lokaal_id,
    'bouwland' as type,
		ST_makeValid(    "TRN_akkerland".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_akkerland"
  UNION 
  SELECT
	  "TRN_overig".ogc_fid::text || 'TRN_overig_kbk10' as identificatie_lokaal_id,
	  'overig' as type,
	  ST_makeValid(    "TRN_overig".geom) as geometrie, 
	  0  as relatievehoogteligging, 
	  'kbk10' as bron, 
	  14 as maxzoom,
	  15 as maxzoom
  FROM kbk10."TRN_overig"
  UNION 
  SELECT
		"TRN_bedrijfsterrein".ogc_fid::text || 'TRN_bedrijfsterrein_kbk10' as identificatie_lokaal_id,
    'bedrijfsterrein' as type,
		ST_makeValid(    "TRN_bedrijfsterrein".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_bedrijfsterrein"
  UNION 
    SELECT 
        "TRN_spoorbaanlichaam".ogc_fid::text ||'-'|| 'TRN_spoorbaanlichaam' as identificatie_lokaal_id,
        'spoorbaanlichaam' as type,
		ST_makeValid(        "TRN_spoorbaanlichaam".geom) as geometrie,
        0  as relatievehoogteligging, 
 	    'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15  as maxzoom
    FROM kbk10."TRN_spoorbaanlichaam"
    WHERE 1=1
UNION
  SELECT
		"TRN_openbaar_groen".ogc_fid::text || 'TRN_openbaar_groen_kbk10' as identificatie_lokaal_id,
    'groenvoorziening' as type,
		ST_makeValid(    "TRN_openbaar_groen".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_openbaar_groen"
  UNION 
  SELECT
		"TRN_zand".ogc_fid::text || 'TRN_zand_kbk10' as identificatie_lokaal_id,
    'zand' as type,
		ST_makeValid(    "TRN_zand".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_zand"
  UNION 
  SELECT
		"TRN_bos-loofbos".ogc_fid::text || 'TRN_bos-loofbos_kbk10' as identificatie_lokaal_id,
    'loofbos' as type,
		ST_makeValid(    "TRN_bos-loofbos".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-loofbos"
  UNION 
  SELECT
		"TRN_bos-naaldbos".ogc_fid::text || 'TRN_bos-naaldbos_kbk10' as identificatie_lokaal_id,
    'naaldbos' as type,
		ST_makeValid(    "TRN_bos-naaldbos".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-naaldbos"
  UNION 
  SELECT
		"TRN_bos-gemengd_bos".ogc_fid::text || 'TRN_bos-gemengd_bos_kbk10' as identificatie_lokaal_id,
    'gemengd bos' as type,
		ST_makeValid(    "TRN_bos-gemengd_bos".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-gemengd_bos"
  UNION 
  SELECT
		"TRN_bos-griend".ogc_fid::text || 'TRN_bos-griend_kbk10' as identificatie_lokaal_id,
    'griend' as type,
		ST_makeValid(    "TRN_bos-griend".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-griend"
  UNION 
  SELECT
		"TRN_boomgaard".ogc_fid::text || 'TRN_boomgaard_kbk10' as identificatie_lokaal_id,
    'boomgaard' as type,
		ST_makeValid(    "TRN_boomgaard".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_boomgaard"
  UNION 
  SELECT
		"TRN_boomkwekerij".ogc_fid::text || 'TRN_boomkwekerij_kbk10' as identificatie_lokaal_id,
    'boomteelt' as type,
		ST_makeValid(    "TRN_boomkwekerij".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_boomkwekerij"
  UNION 
  SELECT
		"TRN_dodenakker".ogc_fid::text || 'TRN_dodenakker_kbk10' as identificatie_lokaal_id,
    'dodenakker' as type,
		ST_makeValid(    "TRN_dodenakker".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_dodenakker"
  UNION 
  SELECT
		"TRN_dodenakker_met_bos".ogc_fid::text || 'TRN_dodenakker_met_bos_kbk10' as identificatie_lokaal_id,
    'dodenakker_met_bos' as type,
		ST_makeValid(    "TRN_dodenakker_met_bos".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_dodenakker_met_bos"
  UNION 
  SELECT
		"TRN_fruitkwekerij".ogc_fid::text || 'TRN_fruitkwekerij_kbk10' as identificatie_lokaal_id,
    'fruitteelt' as type,
		ST_makeValid(    "TRN_fruitkwekerij".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14 as maxzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_fruitkwekerij"
  UNION
  SELECT
		"TRN_binnentuin".ogc_fid::text || 'TRN_binnentuin_kbk10' as identificatie_lokaal_id,
    'erf' as type,
		ST_makeValid(    "TRN_binnentuin".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	14  as minzoom,
 	 	15 as maxzoom
  FROM kbk10."TRN_binnentuin"
UNION 
 SELECT
		"TRN_agrarisch".ogc_fid::text || 'TRN_agrarisch_kbk50' as identificatie_lokaal_id,
    'bouwland' as type,
		ST_makeValid(    "TRN_agrarisch".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
  FROM kbk50."TRN_agrarisch"
 UNION 
 SELECT
		"TRN_overig".ogc_fid::text || 'TRN_overig_kbk50' as identificatie_lokaal_id,
    'overig' as type,
		ST_makeValid(    "TRN_overig".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
  FROM kbk50."TRN_overig"
 UNION 
 SELECT
		"TRN_bedrijfsterrein_dienstverlening".ogc_fid::text || 'TRN_bedrijfsterrein_dienstverlening_kbk50' as identificatie_lokaal_id,
    'bedrijfsterrein' as type,
		ST_makeValid(    "TRN_bedrijfsterrein_dienstverlening".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
  FROM kbk50."TRN_bedrijfsterrein_dienstverlening"
 UNION 
 SELECT
		"TRN_bos_groen_sport".ogc_fid::text || 'TRN_bos_groen_sport_kbk50' as identificatie_lokaal_id,
    'bos_groen_sport' as type,
		ST_makeValid(    "TRN_bos_groen_sport".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
  FROM kbk50."TRN_bos_groen_sport"
 UNION 
 SELECT
		"TRN_zand".ogc_fid::text || 'TRN_zand_kbk50' as identificatie_lokaal_id,
    'zand' as type,
		ST_makeValid(    "TRN_zand".geom) as geometrie, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
  FROM kbk50."TRN_zand"


WITH DATA;



-- View indexes:
CREATE INDEX bgt_vw_terreindeel_vlak_geom_idx ON bgt.bgt_vw_terreindeel_vlak USING gist (geometrie);