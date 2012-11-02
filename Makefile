all:
	gcc -Wall -g segmenter.c -o segmenter -lavformat -lavcodec -lavutil

segmenter: segmenter.o
gcc -o segmenter segmenter.c -l:libavformat.so

clean:
	rm segmenter

install: segmenter
	cp segmenter /usr/local/bin/

uninstall:
	rm /usr/local/bin/segmenter
