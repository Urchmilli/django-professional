#pull base image
FROM python:3.10.4-slim-bullseye

#set environment variable
ENV PIP__DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#set work directory
WORKDIR  /code

#install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

#copy project 
COPY . .