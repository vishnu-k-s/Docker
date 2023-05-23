# Use an official Python runtime as the base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt  /app

RUN pip install --no-cache-dir -r requirements.txt 

# Copy the current directory to the working directory in the container
COPY . /app
