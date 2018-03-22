# Make Manual: https://www.gnu.org/software/make/manual/make.html

.DEFAULT_GOAL := final

MAIN := main

clean:
	rm -f *.log *.aux *.dvi *.fdb_latexmk *.fls *.out *.bbl *.blg

pdf: clean
	latexmk -pdf $(MAIN).tex

final: pdf
	pdffonts $(MAIN).pdf
