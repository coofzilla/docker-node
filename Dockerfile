# Specify base image
FROM node:alpine

# Specifiy working directory
# Executes commands relative to this path
# If not exist, will create folder
WORKDIR /usr/app
# copies everything from current directory project
# to current docker container directory
COPY ./package.json ./
# Install deps
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]