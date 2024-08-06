# Use the official Golang image as a base image
FROM golang:1.22.5-alpine

# Metadata 
LABEL maintainer="rmiles957@gmail.com"
LABEL description="Ascii-art-web application container"

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
