.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help message
	@echo "Usage:"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sed -E 's/^([^:]*:)?([a-zA-Z_-]+): ## (.*)$$/\2|\3/' | awk -F '|' '{if ($$1 == "help") printf "  \033[36mmake%-16s\033[0m %s\n", "", $$2; else printf "  \033[36mmake %-15s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install dependencies
	uv sync --group dev

.PHONY: checks
checks: ## Run ruff format check, linting, and tests
	ruff format --check .
	ruff check .
	pytest

.PHONY: format
format: ## Format code with ruff
	ruff format .

.PHONY: test
test: ## Run tests
	pytest

.PHONY: publish
publish: ## Build and publish package
	rm -rf dist/
	uv build
	uv publish
