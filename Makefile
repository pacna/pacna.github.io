## ----------------------------------------------------------------------
## The purpose of this Makefile is to simplify common development tasks.
## ----------------------------------------------------------------------
##

.PHONY:run
run: ## Run the app
##
	mdbook serve

.PHONY:generate
generate: ## Generate the contents for the frontend
##
	mdbook build

.PHONY:deploy
deploy: ## Deploy to GH page
##

	make generate
	bash deploy.sh

.PHONY:help
help: ## Show this help
##
	@sed -ne '/@sed/!s/##//p' $(MAKEFILE_LIST)