.PHONEY: install
install:
	poetry install

.PHONEY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall
	poetry run pre-commit install


.PHONEY: lint
lint:
	poetry run pre-commit run --all-files
	poetry run flake8

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
update: install migrate install-pre-commit;
