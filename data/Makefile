# Prepare training data from PDF files.
#
# Generate PNG files for page 1 and page 2.

SHELL := /bin/bash
PDF := $(wildcard *.pdf)
PAGE1 = $(patsubst %.pdf, %.1.png, $(PDF))
PAGE2 = $(patsubst %.pdf, %.2.png, $(PDF))

.PHONY: all
all: $(PAGE1) $(PAGE2)

.PHONY: clean
clean:
	rm -f *.1.png
	rm -f *.2.png
	rm -f *.partial_download

%.1.png: %.pdf
	pdftoppm -png -f 1 -l 1 $^ > $@

%.2.png: %.pdf
	pdftoppm -png -f 2 -l 2 $^ > $@
