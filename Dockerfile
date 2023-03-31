FROM node:lts-alpine
EXPOSE 8080
RUN mkdir ./app
COPY . ./app/

WORKDIR ./app/
RUN npm install
ENV NODE_OPTIONS=--openssl-legacy-provider
CMD ["npm","run","serve"]
