.PRECIOUS: %.tex
MDS=$(filter-out README.md, $(wildcard *.md))
PDFS=$(MDS:.md=.pdf)

all: $(PDFS)

%.tex: %.md quinoa.template quinoa.cls
	pandoc $< -o $@ \
	--smart \
	--no-tex-ligatures \
	--standalone \
	--latex-engine=xelatex \
	--template=quinoa.template \
	--chapters

%.pdf: %.tex
	xelatex $<
