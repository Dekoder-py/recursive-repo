# Base image with Docker installed
FROM docker:24.0.5-cli

# Install git
RUN apk add --no-cache git

# Clone the same repo that contains this Dockerfile
RUN git clone https://github.com/Dekoder-py/recursive-repo.git /recursive

# Recursively build the Dockerfile again
WORKDIR /recursive
RUN docker build .

