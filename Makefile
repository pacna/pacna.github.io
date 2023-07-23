## ----------------------------------------------------------------------
## The purpose of this Makefile is to simplify common development tasks.
## ----------------------------------------------------------------------
##

.PHONY:run
run: ## Run the app
##
	mdbook serve

.PHONY:help
help: ## Show this help
##
	@sed -ne '/@sed/!s/##//p' $(MAKEFILE_LIST)