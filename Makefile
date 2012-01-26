SRC=paper

all:	
	latex ${SRC} ; bibtex ${SRC} 
	latex ${SRC} ; latex ${SRC}

pdf:	
	pdflatex ${SRC} ; bibtex ${SRC} 
	pdflatex ${SRC} ; pdflatex ${SRC}

view:
	make all
	xdvi ${SRC}.dvi

viewpdf:
	make all
	acroread ${SRC}.pdf

clean:
	rm -rf *dvi *idx *log *toc *bbl *aux *blg *out *~ proposal_main.pdf
