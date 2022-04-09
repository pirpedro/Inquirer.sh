PREFIX ?= /usr/local/share
DESTDIR ?= $(PREFIX)/scripts
DIST_FILE_NAME = inquirer.sh
BINS = $(wildcard bin/*.sh)
CODE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
DIST_FILE = dist/$(DIST_FILE_NAME)
LIB = "helper/inquirer_common.sh"
SHEBANG = '\#!/usr/bin/env bash' 
COMMANDS = $(subst bin/, , $(BINS))

default: install

build:
	$(eval TEMPFILE := $(shell mktemp -q $${TMPDIR:-/tmp}/inquirer.XXXXXX 2>/dev/null || mktemp -q))
	@# chmod from rw-------(default) to rwxrwxr-x, so that users can exec the scripts
	@chmod 775 $(TEMPFILE)
	@echo $(SHEBANG) >> $(TEMPFILE)
	@tail -n +2 $(LIB) >> $(TEMPFILE)
	@$(foreach BIN, $(BINS), \
		tail -n +14 $(BIN) >> $(TEMPFILE); \
	)
	@mv -f $(TEMPFILE) $(DIST_FILE)
install: 
	@mkdir -p $(DESTDIR)
	@echo "... installing $(DIST_FILE_NAME) to $(DESTDIR)"
	@cp -f $(DIST_FILE) $(DESTDIR)/
	@echo "For usage, you need to include 'source $(DESTDIR)/$(DIST_FILE_NAME)' in your shellscript."