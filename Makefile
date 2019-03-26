IMAGE = microparts/docker-ip2country
VERSION = latest
IP2LOCATION_TOKEN =

image:
	docker build -t $(IMAGE):$(VERSION) . \
		--build-arg IP2LOCATION_TOKEN=$(IP2LOCATION_TOKEN)

push:
	docker push $(IMAGE):$(VERSION)

all: image push