FROM python:3.11.15-alpine3.22 as build

WORKDIR /app
COPY ./src/requirments.txt .
RUN pip install -r requirements.txt
COPY /src /src
RUN adduser -D usr
COPY --chown=usr:usr ./src /app/src
USER usr
ENTRYPOINT [ "python","app/src/main.py" ]


# docker build -t flask-api .
# docker run -d --name flask-hello-app -p 8080:5000 flask-api
# FROM python:3.12-slim

# WORKDIR /app

# COPY src/ ./src

# WORKDIR /app/src

# RUN pip install --no-cache-dir -r requirements.txt

# ENV app_version=1.0.0

# EXPOSE 5000

# CMD ["python", "main.py"]