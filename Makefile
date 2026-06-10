.PHONY: install run test lint docker-up docker-down clean

install:
	pip install -r requirements.txt

run:
	python -m ingestion.github_event_poller

test:
	pytest tests/ -v --tb=short

lint:
	ruff check . --fix

docker-up:
	docker-compose -f infra/docker-compose.yml up -d

docker-down:
	docker-compose -f infra/docker-compose.yml down

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type f -name "*.jsonl" -delete
