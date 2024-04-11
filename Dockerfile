# Use the official Python image as the base image
FROM python:3.8-slim
# FROM 730335664687.dkr.ecr.us-east-1.amazonaws.com/mahara-assignment3:d971b8b
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the Python script into the container at /app
COPY . /app
 
# Install Flask
RUN pip install Flask
 
# Expose port 5000 to the outside world
EXPOSE 5000
 
# Run the Python script when the container launches
CMD ["python", "app.py"]
