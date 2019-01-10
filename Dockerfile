# Dockerfile
### STAGE 1: Build ###

# We label our stage as 'builder'
FROM node:8-alpine as builder

COPY package*.json ./

RUN npm set progress=false && npm config set depth 0 && npm cache clean --force

## Storing node modules on a separate layer will prevent unnecessary npm installs at each build
RUN npm i && mkdir /ng-app && cp -R ./node_modules ./ng-app

WORKDIR /ng-app

COPY . .

## Build the angular app in production mode and store the artifacts in dist folder
RUN npm run build


### STAGE 2: Setup ###
FROM node:8-alpine

## Install http-server
RUN npm install http-server -g

## From 'builder' stage copy over the artifacts in dist folder to default dist folder
COPY --from=builder /ng-app/dist /dist

## Change working directory and serve up the artifacts generated by 
## ng build --prod --sm=false --aot --output-path=dist/client and the typescript transpile to node.js

WORKDIR /dist/client
CMD ["http-server"]
