FROM scratch
COPY ./demo /usr/local/bin/demo
WORKDIR /usr/local/bin/
EXPOSE 8080
CMD [ "demo" ]