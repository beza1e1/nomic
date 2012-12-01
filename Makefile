default: regeln.html state.html

%.html: %.md
	pandoc -f markdown -t html $< -o $@ --standalone -c style.css -V lang=de-1996

.PHONY: clean show

clean:
	rm -f regeln.html

show: regeln.html
	sensible-browser regeln.html
