#-----------------------------------------------------------------
QUELL=main.cpp
PROG=main
CC=g++
CFLAGS=-Wall
#-----------------------------------------------------------------
OBJECTS=$(QUELL:.cpp=.o)
all: Prohaupt.tex
	pdflatex Prohaupt.tex
	bibtex Prohaupt
	pdflatex Prohaupt.tex
	pdflatex Prohaupt.tex
	rm -f *.o *.toc *.log *.aux *.bbl *.blg *.out
clean: 
	rm -f $(PROG) *.o *.toc *.log *.aux *.bbl *.blg *.out
