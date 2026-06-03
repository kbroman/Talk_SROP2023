R_OPTS=--no-save --no-restore --no-init-file --no-site-file # --vanilla, but without --no-environ

STEM = srop2023

docs/$(STEM).pdf: $(STEM).pdf
	cp $< $@

$(STEM).pdf: $(STEM).tex header.tex
	xelatex $<

web: $(STEM).pdf
	cp $(STEM).pdf ~/Docs/github_pages/slides/$(STEM).pdf
