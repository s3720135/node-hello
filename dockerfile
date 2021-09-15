 # syntax=docker/dockerfile:1
FROM node:16.9.1
ENV NODE_ENV=development
WORKDIR /TakeHome2
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . .
CMD ["node", "src/index.js"]
