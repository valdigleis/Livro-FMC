default: pdf

pdf: 
	pdflatex Livro-FMC.tex
	bibtex Livro-FMC.aux
	pdflatex Livro-FMC.tex
	pdflatex Livro-FMC.tex

clean:
	rm *.toc
	rm *.log
	rm *.aux
	rm *.idx
	rm *.ptc
	rm *.blg
	rm *.bbl
	rm *~
