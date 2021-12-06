FROM debian:latest

RUN apt-get update -y && apt-get install python3 python3-pip curl unzip openssh-client jq rsync -y && \
    pip3 install boto3 && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf ./aws && rm awscliv2.zip && apt-get clean
