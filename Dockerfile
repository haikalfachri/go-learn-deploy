# Using golang alpine as the base image
FROM golang:alpine

# Setting the working directory in the Docker image
WORKDIR /app

# Copying the project code into the /app directory in the Docker image
COPY . .

# Running the go command to install project dependencies
RUN go mod download
RUN go build -o entry

# Exposing port 8000 in the Docker container
EXPOSE 8000

# Running the entry application when the container is launched
ENTRYPOINT [ "./entry" ]