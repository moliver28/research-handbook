.PHONY: all test

.PHONY: clean
clean:
	@rm -rf public

lint:
	markdownlint-cli2 --fix "content/**/*.md"

lint-changed:
	git diff --name-only main | grep ".md$$" | xargs markdownlint-cli2 --fix

sync-data:
	@scripts/sync-data.sh

.PHONY: build
build: clean sync-data
	@hugo

.PHONY: view
view: clean sync-data
	@hugo server

