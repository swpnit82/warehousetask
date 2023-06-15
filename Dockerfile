FROM ubuntu:latest

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y nodejs npm

# Create the app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Copy package.json and package-lock.json
COPY . .

# Install app dependencies
RUN npm install

# Copy the app.js file
#COPY app.js .

# Start the Node.js app
CMD ["node","src/index.js"]
