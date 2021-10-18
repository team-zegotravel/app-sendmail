FROM node:14-alpine 
ENV NODE_ENV=production
WORKDIR /app
RUN adduser -S app

COPY package.json /app 
COPY package-lock.json* /app

RUN npm install 
RUN chown -R app /app

USER app
EXPOSE 3000
COPY . /app
CMD ["npm", "start"]