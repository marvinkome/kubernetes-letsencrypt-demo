FROM fedora:32

RUN mkdir /etc/letsencrypt
RUN dnf install certbot -y && dnf clean all

COPY secret-patch-template.json /
COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
