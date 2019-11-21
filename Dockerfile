FROM golang:alpine

ENV SRC_DIR /go/src/cgo-example

# to install gcc
RUN apk add build-base

RUN mkdir -p ${SRC_DIR}
COPY . ${SRC_DIR}

RUN cd ${SRC_DIR} && go build 

CMD ${SRC_DIR}/cgo-example
