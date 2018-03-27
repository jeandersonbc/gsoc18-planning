# Make Manual: https://www.gnu.org/software/make/manual/make.html

.DEFAULT_GOAL := final

MAIN := main

clean:
	latexmk -C && rm *.bbl

pdf: clean
	latexmk -pdf $(MAIN).tex

final: pdf
	pdffonts $(MAIN).pdf
