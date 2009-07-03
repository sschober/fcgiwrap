BINDIR = $(DESTDIR)/usr/bin
all: fcgiwrap
install: all
	mkdir -p $(BINDIR)
	cp fcgiwrap $(BINDIR)

fcgiwrap: fcgiwrap.c
	gcc -std=gnu99 -Wall -Wextra -Werror -pedantic -O2 -g3 fcgiwrap.c -o fcgiwrap -lfcgi

clean:
	-rm fcgiwrap

