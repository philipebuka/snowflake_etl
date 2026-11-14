FROM python:3.12-slim

#set the working directory
WORKDIR /usr/app

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*


# Install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# DEFAULT working directory
WORKDIR /usr/app