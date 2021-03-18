FROM nginx:1.19.8-alpine
COPY ./rootfs /
COPY index.html /usr/share/nginx/html
CMD ["/custom-error-pages"]
