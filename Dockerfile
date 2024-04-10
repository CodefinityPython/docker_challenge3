FROM python:3.9-alpine3.16

WORKDIR notes

COPY requirements.txt /temp/requirements.txt
COPY . .

EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password planner-user

USER planner-user