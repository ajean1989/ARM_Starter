FROM python:3.11

WORKDIR /init

COPY ./maria/model.py .
COPY ./config.py .
COPY ./maria/requirements.txt .
COPY ./tests ./tests

RUN pip install --uprade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m pytest

