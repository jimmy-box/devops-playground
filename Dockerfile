FROM python:3-alpine

RUN mkdir /application
WORKDIR /application
COPY ./app/ .
RUN pip install -r requirements.txt
CMD gunicorn --bind 0.0.0.0:9095 app:app