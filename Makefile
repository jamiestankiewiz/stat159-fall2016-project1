paper.md: paper/sections/*.md images/*.png

paper.html: paper.md
	pandoc -s paper.md -o paper.html

phony: clean
	
clean: rm -f paper.html
