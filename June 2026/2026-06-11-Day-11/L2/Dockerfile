# FROM nginx 
# EXPOSE 80 
# docker run -d -p 8080:80 nginx

# Write a Full Dockerfile with Port Mapping
FROM nginx
EXPOSE 80 
COPY . index.html /usr/share/nginx/html/
docker build -t nephronix-nginx
docker run -d -p 9090:80 nephronix-nginx