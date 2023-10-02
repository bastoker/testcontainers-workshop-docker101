# Use the official Nginx base image
FROM nginx:latest

# Copy your custom index.html file into the Nginx default HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP traffic (default for Nginx)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

