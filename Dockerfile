# Use official Node.js image as base
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json for npm install
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Set the environment variable for Cloud Run to listen on port 8080
ENV PORT 8080

# Expose the port that the app will listen on
EXPOSE 8080

# Command to start the app
CMD ["npm", "start"]
