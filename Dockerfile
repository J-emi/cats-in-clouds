# syntax=docker/dockerfile:1
FROM python:3.10

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
ENV DB_FILE="db/chonkers.db"

COPY db/ db/
COPY templates/ templates/
COPY static/styles.css static/styles.css
COPY app.py app.py

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app
