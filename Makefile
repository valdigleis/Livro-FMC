default: pdf

pdf: 
	pdflatex Livro-FMC.tex
	bibtex Livro-FMC.aux
	pdflatex Livro-FMC.tex
	pdflatex Livro-FMC.tex

clean:
	rm *.toc
	rm *.pdf
	rm *.log
	rm *.aux
	rm *.out
	rm *.blg
	rm *.bbl
	rm *~
