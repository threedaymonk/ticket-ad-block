SVGS = $(wildcard *.svg)
PDFS = $(SVGS:.svg=.pdf)

.PHONY: all clean

all: $(PDFS)

clean:
	rm -f $(PDFS)

%.pdf: %.svg Makefile
	inkscape --export-pdf $@ $<
