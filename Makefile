
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
	 python manage.py makemigrations
	 python manage.py migrate

# Create a superuser for the Django application
superuser:
	 python manage.py createsuperuser

# Access the Django shell
shell:
	 python manage.py shell

# Linting Django 
lint:
    
	 black --check --exclude="venv/" $(DIR_PATH)
	 xenon --max-absolute=C --max-modules=B --max-average=B --ignore=venv $(DIR_PATH)
	 flake8 --exclude=settings.py $(DIR_PATH)


# formating Django 
format:
	 isort --atomic --skip-glob="venv/*" $(DIR_PATH)
	 black --exclude="venv/" $(DIR_PATH)

#restart server
restart:
	docker-compose stop && docker-compose start

#turn off and remove container 
down:
	docker-compose down


.PHONY: build up  migrate superuser shell lint format log restart start stop down
