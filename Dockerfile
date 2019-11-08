FROM python:3.7

ARG GEOS_VERSION=3.8.0

RUN apt update -y && apt install -y

RUN wget http://download.osgeo.org/geos/geos-${GEOS_VERSION}.tar.bz2 -O /tmp/geos-${GEOS_VERSION}.tar.bz2 \
    && tar -xf /tmp/geos-${GEOS_VERSION}.tar.bz2 -C /tmp \
    && cd /tmp/geos-${GEOS_VERSION} \
    && ./configure \
    && make \
    && make install \
    && rm -rf /tmp/geos-${GEOS_VERSION}
