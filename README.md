# python-package-template

A minimal Python package template using modern tooling.

## Structure

```
src/foo/          # package code
tests/            # pytest tests
```

## Install

```bash
make install
# or
uv sync --group dev
```

## Run checks

```bash
make checks
# or
ruff format --check .
ruff check .
pytest
```

## Publish

```bash
make publish
# or
rm -rf dist/
uv build
uv publish
```
