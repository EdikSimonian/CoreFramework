FROM nginx:latest

USER root

RUN apt-get -qq update

RUN apt-get -qq -y install curl

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-5.3.2-amd64.deb

RUN dpkg -i metricbeat-5.3.2-amd64.deb

