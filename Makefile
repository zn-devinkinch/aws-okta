# Goals:
# - user can build binaries on their system without having to install special tools
# - user can fork the canonical repo and expect to be able to run CircleCI checks
#
# This makefile is meant for humans

VERSION := $(shell git describe --tags --always --dirty="-dev")
LDFLAGS := -ldflags='-X "main.Version=$(VERSION)"'

test:
	GO111MODULE=on go test -mod=vendor -v ./...

all: dist/aws-okta

clean:
	rm -rf ./dist

dist/:
	mkdir -p dist

dist/aws-okta: | dist/
	GOOS=darwin GOARCH=amd64 GO111MODULE=on go build -mod=vendor $(LDFLAGS) -o $@

.PHONY: clean all
