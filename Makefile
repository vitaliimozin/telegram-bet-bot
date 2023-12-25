all: install format lint check

install:
	poetry install --no-root

check: mypy
format: ruff-format isort
lint: pylint ruff-check

pylint:
	poetry run pylint telegram_bet_bot

ruff-check:
	poetry run ruff check . 

ruff-format:
	poetry run ruff format . 

isort:
	poetry run isort .

mypy:
	poetry run mypy .
