FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /hello-dj

COPY Pipfile Pipfile.lock /hello-dj/
RUN pip install pipenv && pipenv install --system

COPY . /hello-dj/