FROM node:lts

WORKDIR /app
COPY . . 

WORKDIR /app/my-app

RUN npm install
RUN npm run build

CMD [ "npm", "run", "start" ]

EXPOSE 3000