all: report.pdf purge

# This strange order of latex, bitex, latex, latex is required for the bibliography to be compiled correctly
report.pdf: report.tex
	pdflatex report.tex

# Remove the stuff that pdflatex created
.PHONY: purge
purge:
	-rm *.aux *.log *.dvi *.bbl *.blg

.PHONY: clean
clean: purge
	-rm report.pdf


# General makefile notes:
#       - $@ is the executable name
#       - $< is the name of the first dependency
#       - $^ all dependencies
#       - Commands prefixed with "-" will ignore errors
