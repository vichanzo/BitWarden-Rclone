This is my attempt to create a Dockerfile that will install Bitwarden cli and then setup Rclone.

The Dockerfile looks like this:
```
FROM alpine
RUN apk update && apk add rclone unzip
COPY bw_cli.sh /app/bw_cli.sh
WORKDIR /app
CMD bash bw_cli.sh
```
What does that do??
1) Create an image based on Alpine Linux
2) Install rclone and unzip in the container
3) Copy my script to the working app directory. 
4) Run the script bw_cli.sh which will download and unzip the BitWarden binary


Commands to run:
```
git clone https://github.com/vichanzo/BitWarden-Rclone/
cd BitWarden-Rclone
docker image build -t bitwarden-rclone .
docker container run bitwarden-rclone
```

Shell script:
```
wget https://github.com/bitwarden/cli/releases/download/v1.21.1/bw-linux-1.21.1.zip
unzip bw-linux-1.21.1.zip
chmod +x bw
```
