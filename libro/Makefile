SHELL = /bin/sh

SRC = main.tex

XELATEX = xelatex


all: pdf

#Compiles twice for reference addition
pdf:
	$(XELATEX) $(SRC)
	$(XELATEX) $(SRC)

clean:
	rm -f *.aux *.out *.toc

.PHONY: clean