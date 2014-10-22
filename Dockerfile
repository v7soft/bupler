from ubuntu:14.04

RUN apt-get update

RUN apt-get install -y mc bup
RUN mkdir /source_for_bup /target_for_bup
ADD ./cron.conf /etc/cron.conf
ADD ./script_for_cron.sh  /opt/script_for_cron.sh
RUN crontab /etc/cron.conf

CMD BUP_DIR=/target_for_bup bup init; cron -f
