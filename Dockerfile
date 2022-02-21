FROM alpine
RUN apk update && apk add rclone unzip
COPY bw_cli.sh /app/bw_cli.sh
WORKDIR /app
CMD bash bw_cli.sh
