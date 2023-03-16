FROM openjdk:8u191-alpine3.8
MAINTAINER JS Minet

ENV BUILD 20190424_1503
ENV VERSION 7.2.1M5

COPY INSTALL_SCRIPT.txt /tmp/

RUN wget https://netix.dl.sourceforge.net/project/talend-mdm/Talend%20MDM%20Community%20Edition/${VERSION}/TOS_MDM-All-${BUILD}-V${VERSION}.zip -O /tmp/TOS_MDM-All-${BUILD}-V${VERSION}.zip \
 && unzip -o /tmp/TOS_MDM-All-${BUILD}-V${VERSION}.zip -d /tmp \
 && java -jar /tmp/TOS_MDM-Server-${BUILD}-V${VERSION}.jar - /tmp/INSTALL_SCRIPT.txt \
 && rm /tmp/TOS_MDM-All-${BUILD}-V${VERSION}.zip /tmp/TOS_MDM-Studio-${BUILD}-V${VERSION}.zip /tmp/TOS_MDM-Server-${BUILD}-V${VERSION}.jar /tmp/INSTALL_SCRIPT.txt

WORKDIR /tmp/TOS_MDM-Server-${BUILD}-V${VERSION}

VOLUME ["jobox", "conf/"]

CMD ./apache-tomcat/bin/startup.sh && tail -f /dev/null

EXPOSE 8180
