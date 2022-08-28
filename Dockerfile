FROM ubuntu:22.04
#FROM debian:bullseye-slim

RUN apt-get update \
 && apt-get -y install --no-install-recommends \
    qml-module-qtquick-controls

RUN apt-get -y install --no-install-recommends \
    qml-module-qtquick-xmllistmodel \
    cmake \
    libpoco-dev

RUN apt-get -y install --no-install-recommends \
    build-essential

RUN apt-get -y install --no-install-recommends \
    libqt5charts5-dev

RUN apt-get -y install --no-install-recommends \
    qtdeclarative5-dev

# To test X
RUN apt-get -y install --no-install-recommends \
    x11-utils

# qmlscene: could not find a Qt installation of ''
# - /usr/bin/qmlscene is a wrapper which runs a specifi version
RUN apt-get -y install --no-install-recommends \
    qtchooser qmlscene

RUN apt-get -y install --no-install-recommends \
    qml-module-qtquick-controls2

RUN apt-get -y install --no-install-recommends \
    qml-module-qtcharts
