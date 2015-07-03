all: pizza_slices.pdf purge

# This strange order of latex, bitex, latex, latex is required for the bibliography to be compiled correctly
pizza_slices.pdf: pizza_slices.tex
	pdflatex pizza_slices.tex
	pdflatex pizza_slices.tex
	pdflatex pizza_slices.tex

# Remove the stuff that pdflatex created
.PHONY: purge
purge:
	-rm *.aux *.log *.dvi *.bbl *.blg

.PHONY: clean
clean: purge
	-rm pizza_slices.pdf


# General makefile notes:
#       - $@ is the executable name
#       - $< is the name of the first dependency
#       - $^ all dependencies
#       - Commands prefixed with "-" will ignore errors
