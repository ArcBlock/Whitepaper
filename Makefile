TOP_DIR=.
OUTPUT_FOLDER=./output
README=$(TOP_DIR)/README.md
HUGO=hugo
HUGO_BIN=hugo_0.40.2_Linux-64bit.deb

VERSION=$(strip $(shell cat version))

build:
	@git submodule update --remote
	@cd src; $(HUGO)
	@echo "Site is built."

all: build
	@aws s3 sync output s3://web-test-only.arcblock.io --region us-west-2 --profile prod

init:
#	@brew instsall $(HUGO)
	@git submodule update --init --recursive
	@gem install travis -v 1.8.9 --no-rdoc --no-ri

clean:
	@rm -rf $(OUTPUT_FOLDER)
	@echo "All slides are cleaned."

watch:
	@echo "Hugo server can directly monitor the source change. Just run make run"

deploy:
	@.makefiles/trigger_main_build.sh

run:
	@cd src; $(HUGO) server

travis:
	@curl -fLo /tmp/$(HUGO_BIN) https://github.com/gohugoio/hugo/releases/download/v0.40.2/$(HUGO_BIN)
	@sudo dpkg -i /tmp/$(HUGO_BIN)

travis-init:
	@travis encrypt --add deploy.secret_access_key

include .makefiles/release.mk

.PHONY: all clean build run watch travis travis-init
