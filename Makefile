## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,C,w1309,W1203 app.py

all: install lint test
