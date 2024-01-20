.PHONEY: install
install:
	poetry install

.PHONEY: migrate
migrate:
	poetry run python -m core.manage migrate

.PHONEY: migrations
migrations:
	poetry run python -m core.manage migrations

.PHONEY: runserver
runserver:
	poetry run python -m core.manage runserver

.PHONEY: superuser
superuser:
	poetry run python -m core.manage createsuperuser

.PHONEY: update
update: install migrate ;

