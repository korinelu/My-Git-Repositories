# Use a lightweight Nginx base image
FROM nginx:1.25-alpine

# Copy the HTML file to the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
