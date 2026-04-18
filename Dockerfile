FROM alpine:latest

RUN apk add --no-cache ca-certificates

WORKDIR /pb

COPY pocketbase .

RUN chmod +x /pb/pocketbase

EXPOSE 8090

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090"]