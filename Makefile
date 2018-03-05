.DEFAULT_GOAL := pdf

MAIN := main

clean:
	rm -f *.log *.aux

pdf: clean
	latexmk -pdf $(MAIN).tex
