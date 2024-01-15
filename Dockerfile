FROM golang:alpine3.19 as builder

WORKDIR /app

COPY *go ./


RUN go build main.go



FROM scratch


COPY --from=builder /app .

CMD ["exec main"]
