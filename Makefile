all: build

build:
	hugo

live:
	hugo serve -D


.PHONY: all build