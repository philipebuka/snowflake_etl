FROM python:3.12-slim

#set the working directory
WORKDIR /usr/app

# Install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# DEFAULT working directory
WORKDIR /usr/app