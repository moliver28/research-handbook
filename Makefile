.PHONY: all test

.PHONY: clean
clean:
	@rm -rf public

lint:
	markdownlint-cli2 --fix "content/**/*.md"

sync-data:
	@scripts/sync-data.sh

.PHONY: build
build: clean sync-data
	@hugo

.PHONY: view
view: clean sync-data
	@hugo server

