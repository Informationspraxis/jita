index.html: jita-de.txt jita-de-intro.md
	cp jita-de-intro.md jita-de.md
	./jita-de-to-markdown.pl < $< >> jita-de.md
	echo "</div>" >> jita-de.md
	pandoc -t html5 --css informationspraxis.css \
	 -s -S -o $@ jita-de.md
