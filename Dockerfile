FROM node:19-alpine3.15

WORKDIR /reddit-clone

COPY package*.json ./
RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 3000
CMD ["npm","run","dev"]
