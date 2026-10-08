FROM python:3.11-slim

WORKDIR /app

# Copy repo files
COPY . .

# Install dependencies if you have a requirements.txt, otherwise skip
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Replace 5000 with the port powerk.py listens on
EXPOSE 5000

CMD ["python", "powerk.py"]
