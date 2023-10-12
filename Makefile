## ----------------------------------------------------------------------
## The purpose of this Makefile is to simplify common development tasks.
## ----------------------------------------------------------------------
##
## Usage:
##   - make run: Start a local development server
##   - make build: Generate frontend content
##   - make deploy: Build and deploy to GitHub Pages
##   - make help: Show available commands and descriptions
##

.PHONY:run
run:
	mdbook serve

.PHONY:build
build:
	mdbook build

.PHONY:deploy
deploy:

	make build
	bash deploy.sh

.PHONY:help
help:
	@sed -ne '/@sed/!s/##//p' $(MAKEFILE_LIST)