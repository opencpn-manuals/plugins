all: build


build: .phony
	antora build

install: .phony
	rm -rf /var/www/html/site
	cp -ar build/site /var/www/html
.phony:

	
