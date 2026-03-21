# Step 1: Use official Python base image
FROM python:3.11-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy application code
COPY app/ ./app

# Step 5: Expose application port
EXPOSE 5000

# Step 6: Run the application
CMD ["python", "app/app.py"]