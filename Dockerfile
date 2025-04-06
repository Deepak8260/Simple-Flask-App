# Use Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements (if you have any) and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application
COPY . .

# Expose port 5000
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]