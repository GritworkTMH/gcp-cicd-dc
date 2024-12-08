# Set the base image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose the port Cloud Run expects
EXPOSE 8080

# Define the start command
CMD ["npm", "start"]
