# Build stage
FROM node:16-alpine AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./
COPY .npmrc ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Build the application
RUN npm run build

# Production stage
FROM node:16-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./
COPY .npmrc ./

# Install only production dependencies
RUN npm ci --only=production

# Copy built application from builder stage
COPY --from=builder /app/www ./www
COPY --from=builder /app/src/config ./src/config

# Expose the port the app runs on
EXPOSE 8080

# Set environment variables
ENV NODE_ENV=production

# Start the application
CMD ["node", "./www/server.js"] 
