FROM node as front-end
COPY ./frontend ./app
WORKDIR ./app
RUN npm install
ENV NODE_OPTIONS=--openssl-legacy-provider
CMD ["npm", "start"]