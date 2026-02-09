FROM node:18-alpine

WORKDIR /usr/src/app

ENV NODE_ENV=production

# Install only production dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy rest of the application
COPY . .

EXPOSE 5000

CMD ["node", "server.js"]
