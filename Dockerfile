FROM 014669633018.dkr.ecr.eu-west-2.amazonaws.com/results-cicd:latest

COPY dev-requirements.txt /

RUN pip install -r /dev-requirements.txt
