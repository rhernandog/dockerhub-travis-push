FROM node:12-alpine AS api
WORKDIR "/app"
COPY ./package.json ./
RUN npm install
COPY ./ ./
EXPOSE 5000
CMD [ "npm", "run", "start" ]
