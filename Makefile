SOURCES=\
	main.c\
	foo.c

all: $(SOURCES)
	$(CC) $$(tools/buildsources.sh $(SOURCES)) -o a.out

clean:
	rm -f .cache/*
	rm -f a.out

.PHONY: all clean

