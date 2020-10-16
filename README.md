# Hello (FastAPI)

This is an example application (service) using the [Fast API]
framework. It is a simple `"Hello World!"` application designed
to get you up and running.

<br/>

## Package Management

This example uses [Poetry] for all things package management. Here
are some of the common commands you will run during development.

**Create App**

```bash
$ poetry new <name>
```

**Add Dependencies**

```bash
# Add production dependencies
$ poetry add <package> <package>

# Add development-only dependencies
$ poetry add --dev <package> <package>
```

**Remove Dependencies**

```bash
# Remove production dependencies
$ poetry remove <package> <package>

# Remmove development-only dependencies
$ poetry remove --dev <package> <package>
```

**Install Source Code**

```bash
$ poetry install
```

**Start Development Environment (shell)**

```bash
$ poetry shell
```

See the [Poetry Documentation] for more information.


<br/>

## Testing

This example uses the [pytest] framework. There is a simple test
example for you too look at. You can also run the tests using the
following command:

```bash
$ poetry run pytest -v -x --cov=app
```

This will run the tests in verbose mode and display a coverage report
at the end.


<br/>

## Linting

This example uses [flake8] for linting. You can run the linter using
the following command:

```bash
$ poetry run flake8 app/
```

You can extend this functionality using these [flake-plugins]


<br/>

## Auto Formatting

This example uses [isort] and [black] to automatically format your
code and say goodbye to all the debating on style. You can run the auto-formatting as follows:

```bash
$ poetry run isort app/ && black app/
```

<br/>

## Running The Application

You can run the application using the following command:

```bash
$ poetry run uvicorn app.main:app --reload
```

This will start the server and watch to changes to your code. When
you code changes, it will automatically reload the server. This is
often referred to as hot-reloading.


[Python]: https://www.python.org/downloads/
[Fast API]: https://fastapi.tiangolo.com/
[Poetry]: https://python-poetry.org/
[pytest]: https://docs.pytest.org/en/stable/
[flake8]: https://flake8.pycqa.org/en/latest/
[flake8-plugins]: https://github.com/DmytroLitvinov/awesome-flake8-extensions
[black]: https://github.com/psf/black
[isort]: https://github.com/PyCQA/isort
[Docker]: https://docker.com
[Kubernetes]: https://kubernetes.io/
[kubectl]: https://kubernetes.io/docs/reference/kubectl/
