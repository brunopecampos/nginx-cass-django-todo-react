FROM node as frontend
COPY ./frontend ./app
WORKDIR ./app
RUN npm install
CMD ["npm", "start"]
