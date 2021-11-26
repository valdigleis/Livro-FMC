# Comentário

default: pdflatex

all: pdf bibtex

pdflatex:
	pdflatex -synctex=1 -interaction=nonstopmode Livro-FMC.tex

pdf:
	pdflatex Livro-FMC.tex


bibtex: pdf
	bibtex Livro-FMC.aux
	pdflatex Livro-FMC.tex
	pdflatex Livro-FMC.tex

clean:
	rm -f  *.aux *~ *.bak */*.aux */*~ */*.bak */*/*.aux Livro-FMC.bbl Livro-FMC.blg Livro-FMC.dvi Livro-FMC.nlo Livro-FMC.nls Livro-FMC.ilg Livro-FMC.lof Livro-FMC.log Livro-FMC.lot Livro-FMC.toc

realclean: clean
	rm -f Livro-FMC.pdf
