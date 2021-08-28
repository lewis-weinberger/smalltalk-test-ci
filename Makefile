PREFIX ?= /usr/local

test:
	gst-sunit -v --package=package.xml

install: package.xml stlox
	gst-package package.xml
	gst-load -i Triple

.PHONY: install test
