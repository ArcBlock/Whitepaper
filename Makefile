TOP_DIR=.
OUTPUT_FOLDER=./output
README=$(TOP_DIR)/README.md

VERSION=$(strip $(shell cat version))

build:
	@make deploy

init:
	@gem install travis -v 1.8.9

clean:
	@rm -rf $(OUTPUT_FOLDER)
	@echo "All slides are cleaned."

watch:
	@echo "Hugo server can directly monitor the source change. Just run make run"

deploy:
	@.makefiles/trigger_main_build.sh

include .makefiles/release.mk

.PHONY: all clean build run watch travis travis-init
