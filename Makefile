#
# Makefile
# phatblat.pass
#

################################################################################
#
# Variables
#

SHELL = /bin/sh
PROJECT_DIR = signpass
BIN_DIR = $(PROJECT_DIR)/bin
OUTPUT_BINARY = $(BIN_DIR)/signpass
PASS_PACKAGE = phatblat.pass
XCODE_PROJECT = signpass/signpass.xcodeproj

.PHONY: version
version:
	make --version
	xcodebuild -version

.PHONY: clean
clean:
	rm -rf $(BIN_DIR)

.PHONY: xcproj
xcproj:
	xcodebuild -project $(XCODE_PROJECT) -list

.PHONY: build
build:
	rm -f $(PASS_PACKAGE)/.DS_Store
	xcodebuild -project $(XCODE_PROJECT) build
	ls -l $(OUTPUT_BINARY)

.PHONY: pass
pass: build
	$(OUTPUT_BINARY) -p $(PASS_PACKAGE)
