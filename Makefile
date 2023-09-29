
DIR_PATH := /workdirc


# Build the Docker containers
build:
	docker-compose build

# up the Docker containers
up:
	docker-compose up

# Start the Docker containers
start:
	docker-compose start

# Stop the Docker containers
stop:
	docker-compose stop

# Create and apply database migrations
migrate:
	docker-compose run web  python manage.py makemigrations
	docker-compose run web python manage.py migrate

# Create a superuser for the Django application
superuser:
	docker-compose run web python manage.py createsuperuser

# Access the Django shell
shell:
	docker-compose run web python manage.py shell

# Linting Django 
lint:
    
	docker-compose run web black --check --exclude="venv/" $(DIR_PATH)
	docker-compose run web xenon --max-absolute=C --max-modules=B --max-average=B --ignore=venv $(DIR_PATH)
	docker-compose run web flake8 --exclude=settings.py $(DIR_PATH)


# formating Django 
format:
	docker-compose run web isort --atomic --skip-glob="venv/*" $(DIR_PATH)
	docker-compose run web black --exclude="venv/" $(DIR_PATH)

#restart server
restart:
	docker-compose stop && docker-compose start

#turn off and remove container 
down:
	docker-compose down


.PHONY: build up  migrate superuser shell lint format log restart start stop down
