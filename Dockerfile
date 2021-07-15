FROM node:14

WORKDIR .
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 3000

ENV PORT=3000

CMD ["node", "app.js"]