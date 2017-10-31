FROM ubuntu:16.04
MAINTAINER Stanislav Vitko <stanislav.vitko@gmail.com>

EXPOSE 25/tcp 465/tcp 587/tcp

RUN apt-get update \
    && echo postfix postfix/main_mailer_type string "'Internet Site'" | debconf-set-selections \
    && echo postfix postfix/mynetworks string "127.0.0.0/8 172.18.0.0/16" | debconf-set-selections \
    && echo postfix postfix/mailname string nonexisting.nonexisting.com | debconf-set-selections \
    && apt-get -y --no-install-recommends install \
        postfix \
        # to start postfix in foreground
        supervisor \
        # to log in ususal file /var/log/maillog
        rsyslog \
        libsasl2-modules \
    && rm -rf /var/lib/apt/lists/* \
    && postconf -e mydestination="localhost.localdomain, localhost" \
    && postconf -e smtpd_banner='$myhostname ESMTP $mail_name' \
    && postconf -# myhostname \
    && postconf -e inet_protocols=ipv4 \
    && postconf -e myorigin='</etc/mailname'  # strange fix

# workaround on postfix smtpd problem
RUN mkdir -p /var/spool/postfix/etc/ \
    && cp /etc/services /var/spool/postfix/etc/services

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
