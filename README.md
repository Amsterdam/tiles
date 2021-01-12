# Create vector tiles for basiskaart with T-REX

T-REX vector tile creation

`https://t-rex.tileserver.ch/`

- For now we start by importing the latest version of the basiskaart db

`docker-compose up -d database`  
`docker-compose exec database update-db.sh basiskaart`

- Create the mviews which contains the BGT en KBK10 and KBK50 data, run from the repro root dir

``docker exec -it vector_tiles_t_rex_database_1 bash `psql -h localhost -p5402 -U basiskaart -d basiskaart -f ./config/database/create_all_mviews.sql` | echo please wait...``

- To generate a new version for config.toml do:

`docker-compose run trex genconfig --dbconn postgresql://basiskaart:insecure@database/basiskaart > config/config.toml.template`

Before runnning the tileserver, make sure it can actually cache the files to disk

`mkdir -p cache`

`sudo chown -Rf www-data:www-data cache`

- Run T-Rex tileserver:

`docker-compose run -p 6767:6767 trex serve --config  /var/config/config.toml`

or to use the new mview

`docker-compose run -p 6767:6767 trex serve --config  /var/config/topo_wm.toml`

- Then go to :

 `http://localhost:6767/`

 or
  
 `http://localhost:6767/static/leaflet.html`

 or

 `http://localhost:6767/static/leaflet_topo_wm.html`

- to generate vector tiles cache, run cmd:

`docker-compose run trex generate --maxzoom 16 --config  /var/config/topo_wm.toml`
  
- Create mbtiles file  (optional)

MB tiles is not really required. It is possible refer directly from Tileserver GL to T-rex.
But for completeness we include this here. First install mb-util from :

`https://github.com/mapbox/mbutil`

`mb-util --image_format=pbf cache/bgt_vw data/bgt_vw.mbtiles`

T-Rex writes the bounds and center in metdata.json with square brackets  around the array.
But Tilserver-GL expects these arrays without square brackets. So we have to opdate the metadata.
This can be done in the mbtiles file with:

`echo "update metadata set value=trim(trim(value,'['), ']') where name in (\"bounds\", \"center\")" | sqlite3 data/bgt_vw.mbtiles`

- Run Tileserver GL

`docker-compose up -d tileserver`

Then we can see results on:

`http://localhost:8080/`

Raster tiles can be seen on:

`http://localhost:8080/styles/basic/?raster#14/52.3757/4.9061`

In order to see the vector tiles we need to add t_rex to point to 127.0.0.1  in /etc/hosts

cat /etc/hosts

```\#
\# Host Database
\#
127.0.0.1   localhost MacBook-Pro-FromMe.local t_rex
...
```

But then Tileserver GL serves the T-Rex vector tiles directly in:

`http://localhost:8080/styles/basic/?vector#12/52.37875/4.87371`

- Generate png tiles with mapproxy

Build mapproxy seed image:

`docker-compose build mapproxy_wm_seed`

Then run the maproxy seeding:

`docker-compose run mapproxy_wm_seed`

The resulting tiles are in the ./tiles subdirectory
