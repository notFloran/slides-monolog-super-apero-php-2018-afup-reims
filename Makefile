.DEFAULT_GOAL := help
default: help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install
	@npm install

.PHONY: serve
serve: ## Serve the slides
	@./node_modules/.bin/grunt serve

.PHONY: build
build: ## Build the slides
	@./node_modules/.bin/grunt