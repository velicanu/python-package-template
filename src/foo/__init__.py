import typer


def main(name: str):
    print(f"Hello {name}")
    return True


def entrypoint():
    typer.run(main)
