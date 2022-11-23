FROM alpine:3.17.0
ARG TARGETOS
ARG TARGETARCH
COPY ./rootfs/etc /etc
COPY ./rootfs/www /www
RUN apk add --no-cache libc6-compat
COPY "custom-error-pages-$TARGETOS-$TARGETARCH" /bin/custom-error-pages
COPY index.html /usr/share/nginx/html
RUN chmod +x /bin/custom-error-pages
CMD ["custom-error-pages"]
