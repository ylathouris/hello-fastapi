ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}

# Install poetry (package manager) and disable virtual environment
RUN pip install --upgrade pip && \
    pip install poetry && \
    poetry config virtualenvs.create false

# Install python package dependencies
WORKDIR /code
COPY poetry.lock pyproject.toml ./
RUN poetry export -f requirements.txt | pip install -r /dev/stdin

# Install source code
COPY app/ app/

EXPOSE 8000

# Run application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0"]
