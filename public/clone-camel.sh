#!/usr/bin/env bash

CAMEL="/camel"

if [ -d "${CAMEL}/camel" ] && [ -d "${CAMEL}/camel-karaf" ] && [ -d "${CAMEL}/camel-spring-boot" ]; then
    echo "Camel repositories already present"
else
    mkdir -p ${CAMEL}/camel ${CAMEL}/camel-karaf ${CAMEL}/camel-spring-boot
    git clone https://gitbox.apache.org/repos/asf/camel.git ${CAMEL}/camel
    git clone https://gitbox.apache.org/repos/asf/camel-karaf.git ${CAMEL}/camel-karaf && \
    git clone https://gitbox.apache.org/repos/asf/camel-spring-boot.git ${CAMEL}/camel-spring-boot
fi
