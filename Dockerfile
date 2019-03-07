# use alpine as a base
FROM node:alpine

# copy pwd files to container
COPY ./ ./

# install dependencies
RUN npm install

# default command
CMD ["npm", "start"]