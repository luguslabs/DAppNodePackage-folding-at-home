FROM debian:stable-slim

RUN apt-get update
RUN apt-get -y install wget 
RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb
RUN wget https://download.foldingathome.org/releases/public/release/fahcontrol/debian-testing-64bit/v7.4/fahcontrol_7.4.4-1_all.deb
RUN wget https://download.foldingathome.org/releases/public/release/fahviewer/debian-testing-64bit/v7.4/fahviewer_7.4.4_amd64.deb

RUN mkdir -p /etc/fahclient/ 
RUN touch /etc/fahclient/config.xml

RUN dpkg -i --force-depends fahclient_7.4.4_amd64.deb

COPY ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]

