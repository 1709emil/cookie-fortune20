FROM golang:1.20-alpine AS builder
LABEL authors="pp"

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o backend .

FROM alpine:3.18

WORKDIR /app

COPY --from=builder /app/backend .

EXPOSE 9000

CMD ["./backend"]