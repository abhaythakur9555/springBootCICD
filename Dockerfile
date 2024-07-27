FROM node:14

# Install necessary packages
RUN apt-get update && apt-get install -y \
    chromium \
    --no-install-recommends

# Clean up APT when done.
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set up working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Set the default command
CMD ["node", "index.js"]
