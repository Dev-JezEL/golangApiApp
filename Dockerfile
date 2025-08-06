#syntax=docker/dockerfile:1
#FROM golang:latest
FROM golang:1.22

# Set the working directory inside the container
WORKDIR /app

#Copy gi.mod and go.sum first to download dependencies
#COPY go.mod go.sum ./
#RUN go mod download

#ENV CGO_ENABLED=0

COPY go.mod ./

RUN go mod download && go mod verify

#Copy the rest of the app code
COPY . .

# Verifica contenido
#RUN ls -la /app
RUN echo "Archivos dentro del contenedor:" && ls -la /app
RUN cat /app/main.go

#Build the go app
#RUN go build -o main .
RUN go build -v -x -o main .

#Expose port
EXPOSE 9000

#Specify the comand to run the app
CMD ["./main"]