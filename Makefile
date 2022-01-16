.POSIX:
.SUFFIXES:

DOT = \
	ccp/curriculo-1.dot \
	ccp/curriculo-1-por-periodo.dot

ALL = \
	$(DOT:.dot=.svg) \
	$(DOT:.dot=.png)

all: $(ALL)
.PHONY: all

clean:
	rm -f $(ALL)
.PHONY: clean

.SUFFIXES: .dot .svg .png
.dot.svg:
	dot -Tsvg -o$@ $<

.dot.png:
	dot -Tpng -o$@ $<
