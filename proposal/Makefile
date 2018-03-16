# Make Manual: https://www.gnu.org/software/make/manual/make.html

.DEFAULT_GOAL := pdf

MAIN := main

clean:
	rm -f *.log *.aux *.dvi *.fdb_latexmk *.fls *.out *.bbl *.blg

pdf: clean
	latexmk -pdf $(MAIN).tex
