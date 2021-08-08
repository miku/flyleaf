# Prepare training data from PDF files.
#
# Generate PNG files for page 1 and page 2.

SHELL := /bin/bash
PDF := $(wildcard *.pdf)
PAGE1 = $(patsubst %.pdf, %.1.png, $(PDF))
PAGE2 = $(patsubst %.pdf, %.2.png, $(PDF))
PAGE1_600x813 = $(patsubst %.1.png, %.1.600x813.png, $(PAGE1))
PAGE2_600x813 = $(patsubst %.2.png, %.2.600x813.png, $(PAGE2))
PAGE1_200x271 = $(patsubst %.1.png, %.1.200x271.png, $(PAGE1))
PAGE2_200x271 = $(patsubst %.2.png, %.2.200x271.png, $(PAGE2))

.PHONY: all
all: $(PAGE1_200x271) $(PAGE2_200x271)

%.1.png: %.pdf
	pdftoppm -png -f 1 -l 1 $^ > $@

%.2.png: %.pdf
	pdftoppm -png -f 2 -l 2 $^ > $@

%.1.600x813.png: %.1.png
	convert -resize 600x813\! $^ $@

%.2.600x813.png: %.2.png
	convert -resize 600x813\! $^ $@

%.1.200x271.png: %.1.png
	convert -resize 200x271\! $^ $@

%.2.200x271.png: %.2.png
	convert -resize 200x271\! $^ $@

.SECONDARY:
	# https://stackoverflow.com/a/67780778/89391

.PHONY: clean
clean:
	rm -f *.1.png
	rm -f *.2.png
	rm -f *.1.600x813.png
	rm -f *.2.600x813.png
	rm -f *.1.200x271.png
	rm -f *.2.200x271.png
	rm -f *.partial_download
