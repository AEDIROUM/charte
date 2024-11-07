html:
	make4ht -x -d build/charte -e link-labels.lua -c aediroum.cfg -j index charte.tex
	git clean -fd
	make4ht -x -d build/coussin -e link-labels.lua -c aediroum.cfg -j index coussin.tex
	git clean -fd
	make4ht -x -d build/faecum -e link-labels.lua -c aediroum.cfg -j index faecum.tex
	git clean -fd
	make4ht -x -d build/positions -e link-labels.lua -c aediroum.cfg -j index positions.tex
	git clean -fd
	make4ht -x -d build/codedevie -e link-labels.lua -c aediroum.cfg -j index codedevie.tex
	git clean -fd

pdf:
	latexmk -xelatex -output-directory=build charte.tex
	latexmk -xelatex -output-directory=build coussin.tex
	latexmk -xelatex -output-directory=build faecum.tex
	latexmk -xelatex -output-directory=build positions.tex
	latexmk -xelatex -output-directory=build codedevie.tex
