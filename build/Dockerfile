FROM debian:stable-slim

#RUN apt-get upgrade
RUN apt-get update

# needed for fahclient
RUN apt-get -y install wget bzip2

RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb
RUN mkdir -p /etc/fahclient/ 
RUN touch /etc/fahclient/config.xml

RUN dpkg -i --force-depends fahclient_7.4.4_amd64.deb
RUN rm -f fahclient_7.4.4_amd64.deb

RUN useradd -ms /bin/bash fah
USER fah
WORKDIR /home/fah

RUN mkdir -p /home/fah/
RUN mkdir -p /home/fah/data
COPY ./entrypoint.sh /home/fah/entrypoint.sh

ENTRYPOINT [ "/home/fah/entrypoint.sh" ]
