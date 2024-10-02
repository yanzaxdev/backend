# Use the official Bun image from DockerHub
FROM oven/bun:1 AS base

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and other dependency files
COPY package.json bun.lockb /app/

# Install dependencies
RUN bun install

# Copy the rest of the project files
COPY . /app

# Expose the port Bun will use
EXPOSE 3000

# Run the Bun server
CMD ["bun", "index.ts"]
