FROM nginx:1.12
LABEL maintainer="OpsWay Team"

ADD configs/nginx.conf /etc/nginx/nginx.conf
ADD vhosts/ /etc/nginx/sites-available/

ADD run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /var/www
CMD "/run.sh"