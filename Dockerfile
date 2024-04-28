# Use the official PostgreSQL image as a parent image
FROM postgres:latest

FROM python:3.8.3-slim 
#Image python:3.9.5-slim also works # Image python:3.9.5-slim-buster also works

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
RUN pip install jupyter

# Set environment variables
ENV POSTGRES_DB=sales
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=Harsh@1234

# Copy the initialization script to the container
COPY transfer_sales_data.ipynb /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432

