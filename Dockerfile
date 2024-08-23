FROM node:14-alpine

WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application
COPY . .

# Build the app
RUN yarn build

# Expose the port the app runs on
EXPOSE 8080

# Start the app
CMD ["yarn", "start"]
