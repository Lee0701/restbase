FROM node:12
WORKDIR /srv/service

COPY package*.json ./
RUN npm install

COPY . .

ENV APP_BASE_PATH="/srv/service"

CMD ["npm", "start"]
