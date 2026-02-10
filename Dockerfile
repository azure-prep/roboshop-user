FROM node:22
RUN  useradd roboshop
RUN  mkdir /app ; chown -R roboshop:roboshop /app
USER roboshop
WORKDIR /app
COPY    node_modules node_modules
COPY package.json ./
COPY server.js ./
ENTRYPOINT    ["node", "server.js"]