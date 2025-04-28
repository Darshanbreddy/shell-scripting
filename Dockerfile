# Use Python 3.9 as base image
FROM python:3.9

# Set working directory to /app/backend
WORKDIR /app/backend

# Copy requirements.txt into the container
COPY requirements.txt /app/backend

# Install system dependencies
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files into the container
COPY . /app/backend

# Expose port 8000 for Django app
EXPOSE 8000

# Optionally, run migrations (Uncomment if needed)
#RUN python manage.py migrate
#RUN python manage.py makemigrations
