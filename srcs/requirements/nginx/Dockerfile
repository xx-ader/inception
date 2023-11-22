FROM	debian:12
RUN	apt-get update && apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]
#RUN	rm -f /etc/nginx/nginx.conf
#COPY	/conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE	5000
