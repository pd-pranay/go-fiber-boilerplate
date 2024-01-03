# Use an official Go runtime as a parent image
FROM golang:1.19-alpine

# Set the working directory in the container
WORKDIR /app

# Install air for auto-reloading
RUN go install github.com/cosmtrek/air@v1.49.0

# Copy the current directory contents into the container at /app
COPY . /app

# Download and install any required third-party dependencies into the container

# Build the GoFiber application
RUN go build -o main .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the executable with air
CMD ["air", "-c", "air.toml"]
