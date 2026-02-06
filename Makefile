# Define the commands
.PHONY: setup test docker-build docker-test

# 1. Shortcut to install dependencies on your local machine
setup:
	uv sync

# 2. Shortcut to run your failing tests locally
test:
	uv run pytest

# 3. Shortcut to build your Docker "Box"
docker-build:
	docker build -t project-chimera .

# 4. Shortcut to run your tests INSIDE the Docker box
docker-test:
	docker run project-chimera