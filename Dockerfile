FROM alpine:latest

RUN apk --update add bind

RUN chown -R named:named /etc/bind && mkdir -p /var/cache/bind && chown -R named:named /var/cache/bind && mkdir -p /var/log/named && chown -R named:named /var/log/named

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
