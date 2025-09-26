# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies (ignore peer dependency conflicts)
RUN npm install --legacy-peer-deps

# Copy all project files
COPY . .

# Build Strapi project
RUN npm run build

# Expose Strapi default port
EXPOSE 1337

# Start Strapi
CMD ["npm", "start"]