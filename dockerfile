# Use base node image
FROM node:18

# Set working directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Expose the default port
EXPOSE 5678

# Set environment variables directly here or through Render dashboard
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Auth settings
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Pizza123!

# Start n8n
CMD ["n8n", "start"]
