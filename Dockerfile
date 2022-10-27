# set base image
FROM python:3.10.1-slim-buster

RUN apt-get update
RUN apt-get install -y curl jq git
RUN apt-get clean

# create and set the working directory in the container
RUN mkdir -p /opt/dbt-bigquery-template
RUN mkdir -p /opt/dbt-bigquery-template/logs
COPY credentials /opt/dbt-bigquery-template/credentials
WORKDIR /opt/dbt-bigquery-template

RUN pip install poetry==1.1.14

ADD analysis /opt/dbt-bigquery-template/analysis
ADD data /opt/dbt-bigquery-template/data
ADD dbt_modules /opt/dbt-bigquery-template/dbt_modules
ADD dbt_packages /opt/dbt-bigquery-template/dbt_packages
ADD models /opt/dbt-bigquery-template/models
ADD macros /opt/dbt-bigquery-template/macros
ADD snapshots /opt/dbt-bigquery-template/snapshots
ADD target /opt/dbt-bigquery-template/target
ADD tests /opt/dbt-bigquery-template/tests
COPY dbt_project.yml /opt/dbt-bigquery-template/dbt_project.yml
COPY poetry.lock /opt/dbt-bigquery-template/poetry.lock
COPY profiles.yml /opt/dbt-bigquery-template/profiles.yml
COPY pyproject.toml /opt/dbt-bigquery-template/pyproject.toml

RUN poetry install


ARG VERSION
ENV VERSION=$VERSION