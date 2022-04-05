FROM node:14

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install app dependencies using package.json 
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE 3030
CMD [ "node", "index.js" ]
