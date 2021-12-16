FROM node:16

# create app directory 
RUN mkdir -p ./app 
WORKDIR ./app 

#install botkit 
RUN npm install botkit --save 
COPY bot.js ./app/ 
COPY package.json ./app/ 

#set startup commands
CMD ["node", "bot"]