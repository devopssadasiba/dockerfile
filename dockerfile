# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some depenendencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

ENV NODE_ENV=dev

EXPOSE 3000

# Default command
CMD ["npm", "start"]

# sudo docker build . -t sadasiba/example-node-app
# docker run -d -p80:3000 yourusername/example-node-app