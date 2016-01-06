HTML_DIR := html
MADOKO := node_modules/.bin/madoko

$(HTML_DIR)/index.html: approxbib.md approx.bib $(MADOKO)
	$(MADOKO) --odir=$(HTML_DIR) $<

$(MADOKO):
	npm install madoko
	@touch $@