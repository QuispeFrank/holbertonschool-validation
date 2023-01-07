.PHONY: build
build: ## Generate the website from the markdown and configuration files in the directory dist
	@hugo

.PHONY: clean
clean: ## Cleanup the content of the directory dist
	@rm -rf dist

.PHONY: post
post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i '0,/title/s/.*title.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

.PHONY: package
package: ## Create a file named awesome-website.zip
	@zip awesome-website.zip dist/ -r

.PHONY: unit-tests
unit-tests: ## ERROR: No comment found for target unit-tests in ./Makefile

.PHONY: integration-tests
integration-tests: ## ERROR: No comment found for target integration-tests in ./Makefile

.PHONY: validate
validate: ## ERROR: No comment found for target validate in ./Makefile

.PHONY: lint
lint:
	@markdownlint README.md DEPLOY.md

.PHONY: help
help: ## Show this help usage
	@awk '/[^#]*##[^#]*/{printf "%s %s\n", $$1, substr($$0, index($$0,"##")+2)}' Makefile | head -n -1
