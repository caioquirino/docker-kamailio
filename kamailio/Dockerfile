FROM debian:jessie


ADD conf/kamailio.list /etc/apt/sources.list.d/kamailio.list
RUN apt-get update && \
  apt-get install -y --force-yes mysql-client \
  kamailio kamailio-autheph-modules kamailio-java-modules \
  kamailio-mysql-modules kamailio-presence-modules kamailio-tls-modules \
  kamailio-utils-modules kamailio-websocket-modules kamailio-xml-modules \
  kamailio-xmpp-modules \
  net-tools

ENV MYSQL_HOST=kamailio_database
ENV MYSQL_USER=kamailio
ENV MYSQL_PASSWORD=kamailiorw

EXPOSE 5060
EXPOSE 5060/udp

ADD conf/run.sh /run.sh
RUN chmod +x /run.sh

CMD /run.sh
