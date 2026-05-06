FROM python:3.11-slim
RUN apt-get update && apt-get install -y tesseract-ocr tesseract-ocr-por && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
