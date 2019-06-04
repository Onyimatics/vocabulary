# Build on top of a Node.js + npm image.
FROM node:latest

# Make a codebase directory and work in it
RUN mkdir codebase
WORKDIR /codebase

# Load the package.json and package-lock.json files
COPY package.json .
COPY package-lock.json .

# Install packages
RUN npm install
