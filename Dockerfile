# use alpine as a base
FROM node:alpine

# set working directory
WORKDIR /usr/app

# copy pwd files to container and install dependencies
COPY ./package.json ./
RUN npm install

# copy project files
COPY ./ ./

# default command
CMD ["npm", "start"]