# xelatex options
xelatexOptions = -halt-on-error -file-line-error -shell-escape

# document
mainDoc = thesis

# targets
pdf: $(mainDoc).tex
	xelatex $(xelatexOptions) $<
	bibtex8 $(mainDoc).aux
	xelatex $(xelatexOptions) $<

# phony targets
.PHONY: clean
clean: 
	rm -r *.pdf *.log *.aux *.toc *.out *.bbl *.blg *.bib *.xml *.tdo _minted* 
	rm ./prelude/*.aux
	rm ./untypedLambda/*.aux
	rm ./typedLambda/*.aux
