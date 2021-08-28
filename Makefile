PREFIX ?= /usr/local

install: package.xml stlox
	gst-package package.xml
	gst-load -i Triple

test:
	gst-sunit -v -p Triple

.PHONY: install test
