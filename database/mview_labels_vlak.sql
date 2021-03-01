DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_labels_vlak;

CREATE
    MATERIALIZED VIEW bgt.bgt_vw_labels_vlak TABLESPACE pg_default
AS SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'gemeente' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_gemeente"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'kunstwerk' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk10' as bron,
 	164 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_kunstwerk"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'plaats' as type,
	ST_makeValid(geom) as geom,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_plaats"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'park' as type,
	ST_makeValid(geom) as geom,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_park"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'polder' as type,
	ST_makeValid(geom) as geom,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_polder"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'provincie' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_provincie"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'stadsdeel' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_stadsdeel"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'water' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_water"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'weg' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_weg"
UNION
SELECT
    "KBK10_L_ID" as identificatie_lokaalid,
    'wijk' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk10' as bron,
 	16 as minzoom,
 	16 as maxzoom
   FROM kbk10."KBK10_LBL_wijk"
UNION
 SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'gebied' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_gebied"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'gemeente' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_gemeente"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'kunstwerk' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_kunstwerk"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'plaats' as type,
	ST_makeValid(geom) as geom,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_plaats"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'park' as type,
	ST_makeValid(geom) as geom,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_park"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'polder' as type,
	ST_makeValid(geom) as geom,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_polder"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'provincie' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_provincie"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'stadsdeel' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_stadsdeel"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'water' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_water"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'weg' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_weg"
UNION
SELECT
    "KBK25_L_ID" as identificatie_lokaalid,
    'wijk' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk25' as bron,
 	14 as minzoom,
 	15 as maxzoom
   FROM kbk25."KBK25_LBL_wijk"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'gebied' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk50' as bron,
 	12 as minzoom,
 	12 as maxzoom
   FROM kbk50."KBK50_LBL_gebied"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'gebied' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk50' as bron,
 	13 as minzoom,
 	13 as maxzoom
   FROM kbk50."KBK50_LBL_gebied"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'gemeente' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk50' as bron,
 	12 as minzoom,
 	12 as maxzoom
   FROM kbk50."KBK50_LBL_gemeente"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'gemeente' as type,
	ST_makeValid(geom) as geometrie,
 	'kbk50' as bron,
 	13 as minzoom,
 	13 as maxzoom
   FROM kbk50."KBK50_LBL_gemeente"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'plaats' as type,
	ST_makeValid(geom) as geom,
 	'kbk50' as bron,
 	12 as minzoom,
 	12 as maxzoom
   FROM kbk50."KBK50_LBL_plaats"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'plaats' as type,
	ST_makeValid(geom) as geom,
 	'kbk50' as bron,
 	13 as minzoom,
 	13 as maxzoom
   FROM kbk50."KBK50_LBL_plaats"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'stadsdeel' as type,
	ST_makeValid(geom) as geom,
 	'kbk50' as bron,
 	13 as minzoom,
 	13 as maxzoom
   FROM kbk50."KBK50_LBL_stadsdeel"
UNION
SELECT
    "KBK50_L_ID" as identificatie_lokaalid,
    'water' as type,
	ST_makeValid(geom) as geom,
 	'kbk50' as bron,
 	13 as minzoom,
 	13 as maxzoom
   FROM kbk50."KBK50_LBL_water"
WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_labels_vlak_geom_idx ON bgt.bgt_vw_labels_vlak USING gist (geometrie);