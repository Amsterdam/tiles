DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_wegdeel_lijn;

CREATE materialized VIEW bgt.bgt_vw_wegdeel_lijn
TABLESPACE pg_default AS

/* --- KBK10 ---- */
    select
        "WGL_smalle_weg".ogc_fid::text ||'-'|| 'WGL_smalle_weg' as identificatie_lokaalid,
        'smalle_weg' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_smalle_weg".geom)) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	15  as minzoom, 
 	 	15  as maxzoom
    from
        kbk10."WGL_smalle_weg"
    where 1 = 1
 --   UNION ALL
 --     select
 --       "WGL_autoveer".ogc_fid::text ||'-'|| 'WGL_autoveer' as identificatie_lokaalid,
 --       'autoveer' as type,
--		ST_makeValid(        "WGL_autoveer".geom) as geometrie,
 --       0  as relatievehoogteligging, 
 --	 	'kbk10' as bron, 
 --	 	13  as minzoom, 
 --	 	15  as maxzoom
 --   from
 --       kbk10."WGL_autoveer"
 --   where 1 = 1
--    UNION
--SELECT
--	ogc_fid::text || '-' || (geometrie).path[1]::text ||'-'|| 'WGL_hartlijn' as identificatie_lokaalid,
--	type,
--	wegnaam,
--	wegnummer,
--	ST_Multi((geometrie).geom)::geometry('MULTILINESTRING',28992) AS geometrie,
--	relatievehoogteligging,
--	bron,
--	minzoom,
--	maxzoom
--FROM (
--	SELECT
--		min(f.ogc_fid) as ogc_fid,
--		f.type,
--		f.wegnaam,
--		f.wegnummer,
--		ST_Dump(st_linemerge(ST_Union(f.geometrie))) AS geometrie,
--		f.relatievehoogteligging,
--		f.bron,
--		f.minzoom,
--		f.maxzoom
--	FROM (
--		  SELECT
--			ogc_fid,
--			"TYPEWEG" AS type,
--			"NAAM" AS wegnaam,
--			COALESCE("AWEGNUM","NWEGNUM","SWEGNUM") AS wegnummer,
--			"WGL_hartlijn".geom AS geometrie,
--			NULL::integer AS relatievehoogteligging,
--			'kbk10' AS bron,
--			14 AS minzoom,
--			15 AS maxzoom
--		FROM
--			kbk10."WGL_hartlijn"
--		WHERE
--			"NAAM" != 'NULL'
--		OR
--			"SWEGNUM" != 'NULL'
--		OR
--			"NWEGNUM" != 'NULL'
--		OR
--			"AWEGNUM" != 'NULL'
--		) as f
--	where
--		type != 'veerverbinding'
--	GROUP BY
--		type,
--		wegnaam,
--		wegnummer,
--		relatievehoogteligging,
--		bron,
--		minzoom,
--		maxzoom) AS g
-- UNION
 --   SELECT 
 --       "WGL_voetveer".ogc_fid::text ||'-'|| 'WGL_voetveer' as identificatie_lokaalid,
 --       'voetveer' as type,
--		ST_makeValid(        "WGL_voetveer".geom) as geometrie,
 --       0  as relatievehoogteligging, 
 --	 	'kbk10' as bron, 
 --	 	13 as minzoom,
 --	 	15  as maxzoom
 --   FROM kbk10."WGL_voetveer"
 --   WHERE 1=1
    
 /* --- KBK50 ---- */
UNION
    SELECT 
        "WGL_straat_in_tunnel".ogc_fid::text ||'-'|| 'WGL_straat_in_tunnel' as identificatie_lokaalid,
        'straat' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_straat_in_tunnel".geom)) as geometrie, 
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	11 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_straat_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_hoofdweg_in_tunnel".ogc_fid::text ||'-'|| 'WGL_hoofdweg_in_tunnel' as identificatie_lokaalid,
        'hoofdweg' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_hoofdweg_in_tunnel".geom)) as geometrie,
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_hoofdweg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_regionale_weg".ogc_fid::text ||'-'|| 'WGL_regionale_weg' as identificatie_lokaalid,
        'regionale_weg' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_regionale_weg".geom)) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_regionale_weg"
    WHERE 1=1
UNION
    SELECT 
        "WGL_regionale_weg_in_tunnel".ogc_fid::text ||'-'|| 'WGL_regionale_weg_in_tunnel' as identificatie_lokaalid,
        'regionale_weg' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_regionale_weg_in_tunnel".geom)) as geometrie,
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_regionale_weg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_autosnelweg_in_tunnel".ogc_fid::text ||'-'|| 'WGL_autosnelweg_in_tunnel' as identificatie_lokaalid,
        'autosnelweg' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_autosnelweg_in_tunnel".geom)) as geometrie,
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	15 as maxzoom
    FROM kbk50."WGL_autosnelweg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_straat".ogc_fid::text ||'-'|| 'WGL_straat' as identificatie_lokaalid,
        'straat' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_straat".geom)) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	11 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_straat"
    WHERE 1=1
UNION
    SELECT 
        "WGL_hoofdweg".ogc_fid::text ||'-'|| 'WGL_hoofdweg' as identificatie_lokaalid,
        'hoofdweg' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_hoofdweg".geom)) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
    FROM kbk50."WGL_hoofdweg"
    WHERE 1=1
UNION
    SELECT 
        "WGL_autosnelweg".ogc_fid::text ||'-'|| 'WGL_autosnelweg' as identificatie_lokaalid,
        'autosnelweg' as type,
        NULL AS wegnaam,
        NULL AS wegnummer,
		ST_Multi(ST_makeValid("WGL_autosnelweg".geom)) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	15 as maxzoom
    FROM kbk50."WGL_autosnelweg"
    WHERE 1=1
-- UNION
--     SELECT 
--         "WGL_veerverbinding".ogc_fid::text ||'-'|| 'WGL_veerverbinding' as identificatie_lokaalid,
--         'veerverbinding' as type,
-- 		ST_makeValid(        "WGL_veerverbinding".geom) as geometrie,
--         0  as relatievehoogteligging, 
--  	 	'kbk50' as bron, 
--  	 	8 as minzoom,
--  	 	13 as maxzoom
--     FROM kbk50."WGL_veerverbinding"
--     WHERE 1=1
WITH DATA;

-- Create indexes:
CREATE INDEX bgt_vw_wegdeel_lijn_geom_idx ON bgt.bgt_vw_wegdeel_lijn USING gist (geometrie);