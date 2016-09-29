all: paper.md paper.html

paper.md: paper/sections/*.md images/*.png
	pandoc -s paper/sections/*.md -o paper.md

paper.html: paper.md
	pandoc -s paper.md -o paper.html

phony: clean
	
clean: rm -f paper.html

