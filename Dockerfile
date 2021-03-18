FROM nginx:1.19.8-alpine
COPY ./rootfs /
COPY index.html /usr/share/nginx/html
RUN chmod +x custom-error-pages
CMD ["/custom-error-pages"]
