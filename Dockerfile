FROM golang:1.16-alpine AS build
WORKDIR /go/src/project/
COPY . /go/src/project/
RUN go build -ldflags "-s -w" -o /bin/project
FROM alpine:3.5
RUN apk add --update curl && rm -rf /var/cache/apk/*
COPY --from=build /bin/project /bin/project
EXPOSE 8080
CMD ["/bin/project"]
