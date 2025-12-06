SOURCES=\
	main.c\
	foo.c

all: $(SOURCES)
	cp $$(tools/link.sh $$(tools/buildsources.sh $(SOURCES))) a.out

clean:
	rm -f a.out

.PHONY: all clean

