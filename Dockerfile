FROM golang:1.17


WORKDIR /go/src/linkFinder
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

ENTRYPOINT ["linkFinder"]
