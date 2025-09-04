# Stage 1: Build the React app
FROM node:20-alpine AS build

WORKDIR /app

COPY package*.json ./

# Install dependencies ignoring peer conflicts
RUN npm install --legacy-peer-deps

COPY . .

# Build React app
RUN npm run build

# Stage 2: Serve the React app
FROM node:20-alpine

WORKDIR /app

# Install serve globally
RUN npm install -g serve

# Copy build files from previous stage
COPY --from=build /app/build ./build

EXPOSE 5000

# Serve the app
CMD ["serve", "-s", "build", "-l", "5000"]

