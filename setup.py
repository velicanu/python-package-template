import os

from setuptools import find_packages, setup

SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))

README = open(os.path.join(SCRIPT_DIR, "README.md")).read()

setup(
    name="package_name",
    version="0.0.0",
    description="package description",
    long_description=README,
    long_description_content_type="text/markdown",
    url="package url",
    author="package author",
    author_email="author email",
    license="MIT",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
    include_package_data=True,
    install_requires=["typer"],
    extras_require={
        "test": ["pytest", "ruff"],
    },
    entry_points={
        "console_scripts": [
            "foo=foo:entrypoint",
        ]
    },
)
