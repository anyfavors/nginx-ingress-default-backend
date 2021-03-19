FROM nginx:1.19.8-alpine
ARG TARGETOS
ARG TARGETARCH
COPY ./rootfs/etc /etc
COPY ./rootfs/www /www
COPY "custom-error-pages-$TARGETOS-$TARGETARCH" /custom-error-pages
COPY index.html /usr/share/nginx/html
RUN chmod +x custom-error-pages
CMD ["custom-error-pages"]
