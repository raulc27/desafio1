FROM golang:1.16

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"

RUN apt-get update && \
    go run ./go/src/main.go

CMD ["tail", "-f", "/dev/null"]