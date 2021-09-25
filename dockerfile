FROM golang:alpine AS builder

WORKDIR /app
COPY . .
RUN go build -o /pryamm

FROM alpine:latest
COPY --from=builder /pryamm /pryamm

CMD ["/pryamm"]
