#
# Makefile
# phatblat.pass
#

SHELL = /bin/sh
PROJECT_DIR = signpass
BIN_DIR = ${PROJECT_DIR}/bin
OUTPUT_BINARY = ${BIN_DIR}/signpass
PASS_PACKAGE = phatblat.pass
XCODE_PROJECT = signpass/signpass.xcodeproj

clean:
	rm -rf ${BIN_DIR}

xcproj:
	xcodebuild -project ${XCODE_PROJECT} -list

build:
	rm -f ${PASS_PACKAGE}/.DS_Store
	xcodebuild -project ${XCODE_PROJECT} build
	ls -l ${OUTPUT_BINARY}

pass: build
	${OUTPUT_BINARY} -p ${PASS_PACKAGE}

.PHONY: build pass xcproj
