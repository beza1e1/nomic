default: regeln.html

%.html: %.md
	pandoc -f markdown -t html $< -o $@ --standalone -c style.css -V lang=de-1996

.PHONY: clean

clean:
	rm -f regeln.html
