# Use official Python base image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY hello.py .

# Set the default command to run the Python script
CMD ["python", "hello.py"]
