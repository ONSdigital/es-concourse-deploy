FROM 014669633018.dkr.ecr.eu-west-2.amazonaws.com/results-cicd:latest

COPY dev-requirements.txt /

RUN pip install -r /dev-requirements.txt
RUN apt-get update -y &&\
    apt-get install curl -y &&\
    curl -sL https://deb.nodesource.com/setup_10.x | bash &&\
    apt-get install nodejs -y &&\
    npm install -g serverless