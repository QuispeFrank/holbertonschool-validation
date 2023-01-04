.PHONY: build
build:
	@hugo

.PHONY: clean
clean:
	@rm -rf dist

.PHONY: post
post:
	@hugo new posts/$(POST_NAME).md
	@sed -i '0,/title/s/.*title.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
