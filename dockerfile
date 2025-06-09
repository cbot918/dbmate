FROM alpine:3.20

RUN apk add --no-cache curl bash

RUN curl -fsSL https://github.com/amacneil/dbmate/releases/latest/download/dbmate-linux-amd64 \
    -o /usr/local/bin/dbmate && \
    chmod +x /usr/local/bin/dbmate

WORKDIR /app

COPY db /app/db

entrypoint ["dbmate"]