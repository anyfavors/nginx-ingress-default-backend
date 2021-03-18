FROM nginx:1.19.8-alpine
ARG TARGETPLATFORM
COPY ./rootfs/etc /etc
COPY ./rootfs/www /www
COPY ./rootfs/custom-error-pages-$TARGETPLATFORM /custom-error-pages
COPY index.html /usr/share/nginx/html
RUN chmod +x custom-error-pages
CMD ["/custom-error-pages"]
