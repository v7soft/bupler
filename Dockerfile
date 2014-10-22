from ubuntu:14.04

RUN apt-get update

RUN apt-get install -y mc bup
RUN echo 'root:gfhjkm' | chpasswd
RUN mkdir /source_for_bup /target_for_bup
ADD ./script_for_cron.sh  /opt/script_for_cron.sh

CMD BUP_DIR=/target_for_bup bup init; echo "0 22 * * 1-5 /opt/script_for_cron.sh" > /etc/cron.conf; \
crontab /etc/cron.conf; cron -f
