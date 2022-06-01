# Make an Alpine Linux container
FROM alpine:latest

# Expose port 9999
EXPOSE 9999

# Add python version 3.8.2
# Add the appropriate pip package manager
RUN apk add --no-cache python3 python3-pip

# Load your python web server code
RUN mkdir -p /usr/local/ignw
WORKDIR /usr/local/ignw
COPY * ./
RUN pip3 install --requirement ./requirements.txt

# Run the web server
RUN python3 app.py

