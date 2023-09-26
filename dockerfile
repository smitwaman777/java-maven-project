# Use an Nginx base image
FROM nginx:latest

# Install Java (if not included in your Java base image)
# Example for Debian-based systems
RUN apt-get update && apt-get install -y openjdk-11-jre

# Copy your Java source code into the container
COPY ./ /app

# Set up any environment variables or configurations needed for your Java application

# Expose any necessary ports
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

