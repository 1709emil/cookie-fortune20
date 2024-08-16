FROM golang:1.20 AS builder
LABEL authors="pp"

WORKDIR /app

COPY go.mod ./
RUN go mod download


COPY . .

RUN go build -o frontend .

FROM alpine:3.18

WORKDIR /app

COPY --from=builder /app/frontend .

EXPOSE 8080

CMD ["./frontend"]


