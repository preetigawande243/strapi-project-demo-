FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install --force

COPY . .

EXPOSE 1337

CMD ["npm", "run", "develop"]
