.POSIX:
.SUFFIXES:

ALL = \
	ccp/curriculo-0.svg \
	ccp/curriculo-0-por-periodo.svg

all: $(ALL)
.PHONY: all

clean:
	rm -f $(ALL)
.PHONY: clean

.SUFFIXES: .dot .svg
.dot.svg:
	dot -Tsvg -o$@ $<
