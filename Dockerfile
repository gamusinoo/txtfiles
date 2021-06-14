# syntax=docker/dockerfile:1
FROM node:13-alpine
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
FROM  --platform=linux/arm   node:9-alpine
FROM  --platform  linux  alpine:10-alpine 
FROM node:11-alpine     
FROM node:12-alpine
FROM alpine:13-alpine 
