FROM node:8.16.0-jessie

RUN "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" | tee --append /etc/apt/sources.list \
    && echo "Acquire::Check-Valid-Until false;" | tee -a /etc/apt/apt.conf.d/10-nocheckvalid \
    && apt-get update && apt-get install -t jessie-backports openjdk-8-jdk -y
