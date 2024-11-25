# Use the official Nginx image
FROM nginx:latest

# Copy custom configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy the HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose the port Nginx is serving on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]