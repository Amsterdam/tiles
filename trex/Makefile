VERSION_TAG = 0.13.0

build:
	docker build --build-arg VERSION_TAG=$(VERSION_TAG) -t test -f Dockerfile .
	docker run sourcepole/t-rex --version

push:
	docker login
	docker push sourcepole/t-rex
	docker tag sourcepole/t-rex sourcepole/t-rex:$(VERSION_TAG)
	docker push sourcepole/t-rex:$(VERSION_TAG)

run:
	docker run -p 6767:6767 -v $$PWD../../data:/var/data/in:ro -v /tmp:/var/data/out sourcepole/t-rex serve --bind=0.0.0.0 --openbrowser=false --datasource=natural_earth.gpkg
