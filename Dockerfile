FROM python:3.7-slim

COPY dev-requirements.txt /

RUN pip install -r /dev-requirements.txt
RUN apt-get update -y &&\
    apt-get install curl -y &&\
    curl -sL https://deb.nodesource.com/setup_10.x | bash &&\
    apt-get install nodejs -y &&\
    npm install -g serverless