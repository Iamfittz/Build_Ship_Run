FROM golang:latest AS builder
WORKDIR /src
COPY src .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app ./main.go

FROM scratch
ADD ./demo/html /html
COPY --from=builder /src/app /app
ENTRYPOINT ["/app"]
EXPOSE 8080
