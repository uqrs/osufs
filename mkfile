BIN=$PLAN9/bin
LIBDIR=$PLAN9/lib

CC=9c
LD=9l

osu9:Q:	osu9.c hitobject.c rgbline.c beatmap.c hitobject.h rgbline.h beatmap.h
	9c -c osu9.c hitobject.c rgbline.c beatmap.c
	9l -o osu9 osu9.o hitobject.o rgbline.o beatmap.o
nuke:
	rm *.o osu9 rtests
