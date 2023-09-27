FROM python:3.8

ENV PYTHONUNBUFFERED 1

RUN mkdir /workdirc

WORKDIR /workdirc

ADD . /workdirc

RUN pip install -r requirements.txt

