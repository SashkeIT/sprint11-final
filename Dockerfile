FROM golang:1.22
WORKDIR /sprint11-final
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN  GOOS=linux GOARCH=amd64 go build -o /app
CMD ["/app"]