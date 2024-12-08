# Use the official NGINX base image
FROM nginx:stable-alpine

# Copy website files to the default NGINX public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose the port Cloud Run uses
EXPOSE 8080

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
