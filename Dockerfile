FROM node:14-alpine

# Install dependencies
RUN apk add --no-cache git

# Set working directory
WORKDIR /app

# Clone Dashy repository
RUN git clone https://github.com/Lissy93/dashy.git .

# Install app dependencies
RUN yarn install

# Build the app
RUN yarn build

# Expose the port the app runs on
EXPOSE 8080

# Start the app
CMD ["yarn", "start"]
