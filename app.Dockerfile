##
## Python Dockerfile
##
## Pull base image.
FROM python:alpine3.12
EXPOSE 9999

# Install basic utilities
RUN apk add -U \
        gcc\
        linux-headers\
        musl-dev\
        libffi-dev\
  && rm -rf /var/cache/apk/*

# This is failing for some odd pip upgrade error commenting out for now
#RUN pip install --upgrade pip

COPY . /app
WORKDIR /app
RUN pip install --requirement ./requirements.txt

CMD [ "python3", "/app/app.py" ]
