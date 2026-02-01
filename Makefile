# Сборка CV: исходники в src/, PDF в корне
.PHONY: build clean

build:
	cd src && latexmk -pdf -interaction=nonstopmode cv.tex
	cp src/cv.pdf .

clean:
	cd src && latexmk -C
	rm -f cv.pdf
