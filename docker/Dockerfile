FROM python:3.11-slim-bookworm

WORKDIR /src

ENV TERM=xterm

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev

COPY ./requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt
