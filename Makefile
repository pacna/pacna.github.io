## ----------------------------------------------------------------------
## The purpose of this Makefile is to simplify common development tasks.
## ----------------------------------------------------------------------
##
## Usage:
##   - make run: Start a local development server
##   - make build: Generate frontend content
##   - make help: Show available commands and descriptions
##

.PHONY:run
run:
	mdbook serve

.PHONY:build
build:
	mdbook build

.PHONY:help
help:
	@sed -ne '/@sed/!s/##//p' $(MAKEFILE_LIST)