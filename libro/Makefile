SHELL = /bin/sh

SRC = main.tex
SRC_UBUNTU = instalacion-ubuntu.tex

XELATEX = xelatex


all: pdf

# Compiles twice for reference addition
pdf:
	$(XELATEX) $(SRC)
	$(XELATEX) $(SRC)

# The compilation time of the ubuntu installation is abnormally long
ubuntu:
	$(XELATEX) $(SRC_UBUNTU)
	$(XELATEX) $(SRC_UBUNTU)

clean:
	rm -f *.aux *.out *.toc *.log

.PHONY: clean