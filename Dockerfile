FROM ubuntu:22.04
#FROM debian:bullseye-slim

# Basic stuff and build tools
RUN apt-get update \
 && apt-get -y install --no-install-recommends \
    build-essential \
    cmake

# Poco C++ library
RUN apt-get -y install --no-install-recommends \
    libpoco-dev

# Qt5 build tools
RUN apt-get -y install --no-install-recommends \
    qtdeclarative5-dev \
    libqt5charts5-dev

# QML tools
RUN apt-get -y install --no-install-recommends \
    qtchooser \
    qmlscene

# QML modules needed by DAS_HMI
RUN apt-get -y install --no-install-recommends \
    qml-module-qtquick2 \
    qml-module-qtquick-window2 \
    qml-module-qtquick-controls2 \
    qml-module-qtquick-xmllistmodel \
    qml-module-qtcharts

# Test framework
RUN apt-get -y install --no-install-recommends \
    libgtest-dev \
    libgmock-dev

# Other tools
RUN apt-get -y install --no-install-recommends \
    file less \
    strace \
    git \
    gdb

RUN ldconfig
