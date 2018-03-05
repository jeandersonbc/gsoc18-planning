.DEFAULT_GOAL := pdf

MAIN := main

clean:
	rm -f *.log *.aux

pdf: clean
	pdflatex $(MAIN).tex
