FROM alpine:latest
RUN apk --update add ca-certificates \
                     mailcap \
                     curl