# Dockerfile for book_catalog microservice
FROM python:3.9

WORKDIR /app

COPY ./book_catalog /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
