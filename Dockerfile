# Use lightweight Nginx image
FROM nginx:alpine

# Copy HTML/CSS files to Nginx's web directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 (default for web traffic)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]