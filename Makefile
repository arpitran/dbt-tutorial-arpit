CONTAINER_NAME := dbt-bigquery-template
VERSION := $(shell git describe --tags --always)

build:
	@docker build \
		--build-arg VERSION=${VERSION} \
		--tag ${CONTAINER_NAME}:$(VERSION) \
		--tag ${CONTAINER_NAME}:latest \
		.

.PHONY: run-dbt-debug
run-dbt-debug: build
	DBT_COMMAND="dbt debug" docker-compose up dbt-bigquery-template-dev

.PHONY: run-dbt-run
run-dbt-run: build
	DBT_COMMAND="dbt run" docker-compose up dbt-bigquery-template-dev