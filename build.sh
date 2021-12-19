#!/bin/zsh

default: pdf

pdf: 
	pdflatex Livro-FMC.tex
	bibtex Livro-FMC.aux
	pdflatex Livro-FMC.tex
	pdflatex Livro-FMC.tex


rm *.toc
rm *.log
rm *.aux
rm *.idx
rm *.ptc
rm *.blg
rm *.bbl


echo "Digite o user"
read USER
echo "Digite o IP"
read IP

scp Livro-FMC.pdf $USER@$IP:~/public_html/files/
