FROM python:3.7-slim

COPY dev-requirements.txt /

RUN pip install -r /dev-requirements.txt
