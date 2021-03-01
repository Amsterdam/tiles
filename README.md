# Create vector and raster tiles for basiskaart

## Prepare the database

Import the latest version of the basiskaart db into PostGIS:

`docker-compose up -d database`  
`docker-compose exec database update-db.sh basiskaart`

Create the mviews which contains the BGT en KBK10 and KBK50 data, run from the repro root dir

``docker exec -it vector_tiles_t_rex_database_1 bash `psql -h localhost -p5402 -U basiskaart -d basiskaart -f ./config/database/create_all_mviews.sql` | echo please wait...``

## Serve vector tiles

[T-Rex](https://t-rex.tileserver.ch/)

Make sure T-Rex can actually cache the files to disk:

`mkdir -p cache`

`sudo chown -Rf www-data:wwww-data cache`

Bring up T-Rex to serve vector tiles in Web Mercator (EPSG:3857) projection:

`docker-compose up -d t_rex`

View the vector tiles in Web Mercator (EPSG:3857) projection:
 
- [Viewer (WM)](http://localhost:6767/static/mapbox.html)
 
Bring up T-Rex to serve vector tiles in Rijksdriehoekstelsel (EPSG:28992) projection:

`docker-compose up -d t_rex_rd`

View the vector tiles in Rijksdriehoekstelsel (EPSG:28992) projection:
 
- [Viewer (RD)](http://localhost:6767/static/mapbox-rd.html)

## Generate vector tile caches

To generate vector tiles cache, run cmd:

`docker-compose run t_rex generate --minzoom 10 --maxzoom 16 --config /var/config/topo_wm.toml --extent 4.49712476945351,52.1630507756721,5.60867873764429,52.6147675426215`

To generate vector tiles cache, run cmd:

`docker-compose run t_rex_rd generate --minzoom 5 --maxzoom 11 --config /var/config/topo_rd.toml --extend 4.49712476945351,52.1630507756721,5.60867873764429,52.6147675426215`

## Serve raster tiles

[TileServer GL](https://tileserver.readthedocs.io/)

Bring up TileServer GL to serve raster tiles:

`docker-compose up -d tileserver_gl`

Check the TileServer GL configuration and endpoints:

`http://localhost:8080/`

View the raster tiles in Web Mercator (EPSG:3857) projection:

- [Standaard](http://localhost:8080/styles/topo_wm/?raster#12/52.37875/4.87371)
- [Light](http://localhost:8080/styles/topo_wm_light/?raster#12/52.37875/4.87371)
- [Z/W](http://localhost:8080/styles/topo_wm_zw/?raster#12/52.37875/4.87371)

View the raster tiles in Rijksdriehoekstelsel (EPSG:28992) projection:

- [Standaard](http://localhost:8080/styles/topo_rd/?raster#6/10.97152/-11.25000)
- [Light](http://localhost:8080/styles/topo_rd_light/?raster#6/10.97152/-11.25000)
- [Z/W](http://localhost:8080/styles/topo_rd_zw/?raster#6/10.97152/-11.25000)

To see the vector tiles we need to add `t_rex` and `t_rex_rd` to point to 127.0.0.1  in `/etc/hosts`

```
sudo cat >>/etc/hosts <<EOL
#
# Map t-rex endpoints to localhost
#
127.0.0.1	t_rex
127.0.0.1	t_rex_rd
EOL
```

## Generate raster tiles

[MapProxy](https://mapproxy.org/)

Build topo_wm mapproxy image:

`docker-compose build topo_wm`

Then run the mapproxy seeding :

`docker-compose run topo_wm`

The resulting tiles are in the ./tiles subdirectory