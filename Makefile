default: regeln.html

%.html: %.md
	pandoc -f markdown -t html $< -o $@ --standalone -c style.css

.PHONY: clean

clean:
	rm -f regeln.html
