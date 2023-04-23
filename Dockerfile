# syntax=docker/dockerfile:1
FROM python:3.10

COPY app.py app/app.py

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY db/ db/
COPY templates/ templates/
COPY static/styles.css static/styles.css

WORKDIR /

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app
