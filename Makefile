all: build

build:
	hugo --cleanDestinationDir

live:
	hugo serve -D

publish: build
	rsync -avz --delete public/ root@home.slaanesh.org:/var/www/htdocs/slaanesh.org/

.PHONY: all build