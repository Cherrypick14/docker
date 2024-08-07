# Use the official Golang image as a base image
FROM ubuntu

# Metadata 
LABEL maintainer="cherrypicklet@gmail.com"
LABEL description="Ascii-art-web application container"
LABEL version="1.0"
LABEL license="MIT"

# Install requred packages
RUN apt-get update && apt-get install -y \
    git \
    golang
# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files
COPY go.mod ./

# Download dependencies
RUN go mod download

# Copy the source code
COPY . .

# Build the Go application
RUN go build -o /ascii-art-web

# Expose the port the app runs on
EXPOSE 8000

# Set the entrypoint command to run the web server
CMD ["/ascii-art-web"]
