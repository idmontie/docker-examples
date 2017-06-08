# For simplicity, we're just adding nginx to the same
# container as our node app

# ================================================
# Install Node
# ================================================
FROM node:8.0.0

# UPDATE
RUN apt-get update -y

# ================================================
# Install Nginx
# ================================================

RUN apt-get install --no-install-recommends --no-install-suggests -y nginx
RUN useradd --system --no-create-home --user-group nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY configs/* /etc/nginx/conf.d/

RUN touch /var/log/nginx/example.access.log

# ================================================
# Finish up
# ================================================

WORKDIR /app

EXPOSE 80

COPY ./start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh
RUN ln -s usr/local/bin/start.sh /

ENTRYPOINT ["start.sh"]
