# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some depenendencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

ENV NODE_ENV=dev

# Default command
CMD ["npm", "start"]