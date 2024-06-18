# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Create the directory if it doesn't exist and copy the index.html to the default Nginx HTML location
RUN mkdir -p /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
