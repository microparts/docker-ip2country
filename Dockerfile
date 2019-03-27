FROM alpine

ARG IP2LOCATION_TOKEN

ENV DATABASE_PATH "/database"
# token from https://lite.ip2location.com
ENV IP2LOCATION_URL "https://www.ip2location.com/download?token=$IP2LOCATION_TOKEN&file=DB1LITEBIN"
ENV SXGEO_URL "https://sypexgeo.net/files/SxGeoCountry.zip"

RUN apk update \
    && apk add --no-cache ca-certificates wget unzip \
    && mkdir $DATABASE_PATH \
    && rm -f "$DATABASE_PATH/*" \
    && wget $SXGEO_URL -O "$DATABASE_PATH/SxGeoCountry.zip" \
    && unzip -Co "$DATABASE_PATH/SxGeoCountry.zip" "SxGeo.dat" -d $DATABASE_PATH \
    && wget -nv -q $IP2LOCATION_URL -O "$DATABASE_PATH/IP2LOCATION-LITE-DB1.BIN.zip" \
    && unzip -Co "$DATABASE_PATH/IP2LOCATION-LITE-DB1.BIN.zip" "IP2LOCATION-LITE-DB1.BIN" -d $DATABASE_PATH \
    && rm -f $DATABASE_PATH/*.zip

WORKDIR /database
