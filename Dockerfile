FROM python:3

ENV GDAL_VERSION=2.2.1

# Install GEOS
RUN wget http://download.osgeo.org/geos/geos-${GEOS_VERSION}.tar.bz2 -O /tmp/geos-${GEOS_VERSION}.tar.bz2 \
    && tar -xf /tmp/geos-${GEOS_VERSION}.tar.bz2 -C /tmp \
    && cd /tmp/geos-${GEOS_VERSION} \
    && ./configure \
    && make \
    && make install \
    && rm -rf /tmp/geos-${GEOS_VERSION}
