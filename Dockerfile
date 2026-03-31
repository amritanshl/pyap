FROM python:3.13.9-slim

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code AND the templates folder
COPY app.py .
COPY templates/ ./templates/

# Create the data directory for SQLite
RUN mkdir /data

EXPOSE 5000

CMD ["python", "app.py"]