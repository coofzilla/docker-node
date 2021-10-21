# Specify base image
FROM node:alpine

# used f/fix error w/node 15
WORKDIR /usr/app
# copies everything from current directory to current docker container
COPY ./ ./
# Install deps
RUN npm install

# Default command
CMD ["npm", "start"]