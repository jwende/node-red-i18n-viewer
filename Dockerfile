FROM ubuntu:18.04
RUN apt update
RUN apt install -y curl wget
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt update
RUN apt install -y git nodejs
RUN git clone https://github.com/node-red/i18n-viewer
WORKDIR i18n-viewer
RUN npm install
COPY settings.ini /i18n-viewer/settings.ini
RUN node bin/update-catalogs.js

# Expose the listening port of node-red
EXPOSE 2880

ENTRYPOINT ["node", "index.js"]

