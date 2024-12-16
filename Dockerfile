FROM node:21
WORKDIR /app
COPY hello-world/package*.json ./  
RUN npm install
COPY hello-world .  
EXPOSE 3000
CMD ["node", "index.js"]