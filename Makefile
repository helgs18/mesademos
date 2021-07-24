CFLAGS=-Wall
LDFLAGS=-L/usr/X11R6/lib -lGL -lGLU -lglut -lXi -lXmu -lm

isosurf: isosurf.c
	gcc isosurf.c ${LDFLAGS} -o isosurf

offset: offset.c
	gcc offset.c ${LDFLAGS} -o offset

spin: spin.c
	gcc spin.c ${LDFLAGS} -o spin

reflect: reflect.c image.c
	gcc reflect.c image.c ${LDFLAGS} -o reflect

texobj: texobj.c
	gcc texobj.c ${LDFLAGS} -o texobj

tess_demo: tess_demo.c
	gcc tess_demo.c ${LDFLAGS} -o tess_demo

bounce: bounce.c
	gcc bounce.c ${LDFLAGS} -o bounce

gamma: gamma.c
	gcc gamma.c ${LDFLAGS} -o gamma

gears: gears.c
	gcc gears.c ${LDFLAGS} -o gears

trdemo: trdemo.c tr.c
	gcc trdemo.c tr.c ${LDFLAGS} -o trdemo

winpos: winpos.c
	gcc winpos.c ${LDFLAGS} -o winpos


all: isosurf offset spin tess_demo reflect texobj gears trdemo winpos bounce gamma

clean:
	rm -rf isosurf offset spin tess_demo reflect texobj gears trdemo winpos bounce gamma
