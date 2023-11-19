# Use an official Golang runtime as a parent image
FROM golang:1.8

# Set the working directory inside the container
WORKDIR /go/src/app

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container
COPY . .

# Download and install any required dependencies
RUN go get -u github.com/gorilla/mux

# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./main"]
