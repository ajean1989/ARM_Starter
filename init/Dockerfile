FROM python:3.11

WORKDIR /init

COPY ./maria/model.py .
COPY ./config.py .
COPY ./requirements.txt .
COPY ./tests ./tests

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN python ./maria/model.py
RUN python -m pytest


