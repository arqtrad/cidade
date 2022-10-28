.PHONY : _site
_site : | assets/js/bootstrap.bundle.min.js
	@docker run --rm -v "`pwd`:/srv/jekyll" \
		jekyll/jekyll:pages /bin/bash -c \
		"chmod 777 /srv/jekyll && jekyll build"

.PHONY : serve
serve : | assets/js/bootstrap.bundle.min.js
	@docker run --rm -v "`pwd`:/srv/jekyll" \
		-h "0.0.0.0:127.0.0.1" -p "4000:4000" \
		jekyll/jekyll:pages \
		jekyll serve --future

assets/js/bootstrap.bundle.min.js : _bootstrap/dist/js/bootstrap.bundle.min.js
	@cp $^ $@

# vim: set foldmethod=marker shiftwidth=2 tabstop=2 :
