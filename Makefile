.DEFAULT_GOAL := pdf

MAIN := main

clean:
	rm -f *.log *.aux *.dvi *.fdb_latexmk *.fls *.out

pdf: clean
	latexmk -pdf $(MAIN).tex
