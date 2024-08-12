# _*Ascii-art-Web-Dockerize*_

## _*Description*_

- Ascii-art-Web-Dockerize is a web application that implements a basic web server in Go, encapsulated within a Docker container. This project demonstrates best practices for Docker containerization, including the creation of a Dockerfile, an image, and a container, while adhering to good coding practices in Go.

## _*Installation and Setup*_

- To get started with the project, follow these steps: <font color="red">After having [Go](https://go.dev/dl/) installed in your machine, obviously.</font>

1. **Clone the Repository**

   - Clone the repository to your local machine using Git:

   ```bash
   git clone https://learn.zone01kisumu.ke/git/cowalla/ascii-art-web-dockerize.git
   ```

- Alternatively, download the project directly from the repository and access it through your file manager.

## _*Build the Docker Image*_

- Navigate to the project directory and build the Docker image:

```bash
docker build -t go-web-server .
```

## _*Run the Docker Container*_

- Run the Docker container from the built image:

```bash
docker run -d -p 8000:8000 --name go-web-server-container go-web-server
```

### _*Access the Application*_

- Open your web browser and navigate to `http://localhost:8000` to access the web server.

## _*Implementation*_

- The web server is implemented in Go, focusing on the following aspects:

- HTTP Server: Handles HTTP requests and responses.
- HTML: Serves basic HTML content.
- Metadata: Docker objects are tagged with relevant metadata.
- Garbage Collection: Care is taken to manage unused Docker objects.

## _*Algorithm*_

### _*Server Initialization*_

- The server starts and listens on port 8000.

### _*Handling Requests*_

- Handles GET requests to serve HTML content.

### _*Response*_

- Returns a simple HTML page with a welcome message.
Code Structure
- The project is organized into the following directories:
- main.go: Contains the Go code to set up and run the HTTP server.
- Dockerfile: Dockerfile for building the Docker image.
- README.md: This file.
- HTTP Endpoints
- GET /: Returns a simple HTML page with a welcome message.

### _*HTTP Status Codes*_

- `200 OK`: Returned when the request is successful.
- `404 Not Found`: Returned when the requested resource is not found.
- `500 Internal Server Error`: Returned for server errors.

## _*Notes*_

- The project uses the Go standard library for HTTP handling.
- Dockerfile follows best practices for creating Docker images.
- Unused Docker objects are managed to prevent "garbage collection" issues.

### _*Authors*_

[<font color="purple">Joan2509</font>](https://github.com/joan2509)

[<font color="purple">Cherrypick14</font>](https://github.com/Cherrypick14)

[<font color="purple">AnxielRay</font>](https://github.com/anxielray)
