FROM nginx:alpine

# Copy the site into Nginx's web root
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

# Container health monitoring
HEALTHCHECK --interval=15s --timeout=3s --retries=3 \
  CMD wget -qO- http://localhost/ >/dev/null || exit 1
