# Dockerfile
FROM python:3.9-slim

RUN apt-get update && apt-get install -y curl \
    && pip install flask \
    && apt-get clean

COPY app.py /app.py

CMD ["python", "/app.py"]
