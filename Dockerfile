FROM python:3.11-slim

WORKDIR /app

COPY powerk.py .

# 10086 for strip hardware, 8080 for web control UI
EXPOSE 10086 8080

CMD ["python", "powerk.py"]
