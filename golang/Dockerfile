FROM golang:1.16.2-stretch AS build
WORKDIR /src
COPY . .
# Static build required so that we can safely copy the binary over.
RUN go mod init example && \
    CGO_ENABLED=0 go build -ldflags '-extldflags "-static"' -o /out/example main.go

FROM scratch AS bin
COPY --from=build /out/example /out/example
EXPOSE 8080
ENTRYPOINT ["/out/example"]
