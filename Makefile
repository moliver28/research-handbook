DOCKER_MOUNT_ARGS?=

.PHONY: all test

.PHONY: clean
clean:
	@rm -rf public

sync-data:
	@scripts/sync-data.sh

.PHONY:
prep:
	@npm install

.PHONY: docker-prep
docker-prep:
	@docker run --rm --mount "type=bind,source=$(CURDIR),destination=$(CURDIR)$(DOCKER_MOUNT_ARGS)" --workdir "$(CURDIR)" hugomods/hugo:exts npm install

.PHONY: build
build: clean sync-data
	@hugo

.PHONY: docker-build
docker-build: clean sync-data
	@docker run --rm --publish 1313:1313 --mount "type=bind,source=$(CURDIR),destination=$(CURDIR)$(DOCKER_MOUNT_ARGS)" --workdir "$(CURDIR)" hugomods/hugo:exts hugo

.PHONY: view
view: clean sync-data
	@hugo server

.PHONY: docker-view
docker-view: clean sync-data
	@docker run --rm --publish 1313:1313 --mount "type=bind,source=$(CURDIR),destination=$(CURDIR)$(DOCKER_MOUNT_ARGS)" --workdir "$(CURDIR)" hugomods/hugo:exts hugo server
