FROM nginx:alpine

# Remove default NGINX config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom NGINX config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy site content
COPY index.html /usr/share/nginx/html/index.html
COPY games/    /usr/share/nginx/html/games/

EXPOSE 80
