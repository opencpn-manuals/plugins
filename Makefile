all: build


build: .phony
	antora build
	touch docs/.nojekyll
	git add docs

install: .phony
	rm -rf /var/www/html/site
	cp -ar build/site /var/www/html
.phony:

	
