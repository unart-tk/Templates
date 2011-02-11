NAME=$$(basename $$(pwd))
SRC=article
SOURCE=${SRC}.lp
NWSRC=${SRC}.nw
MDSRC=${SRC}.md
PROGRAM= ${NAME}
DOC= ${NAME}.html
MD2HTML=$$HOME/local/bin/md2html
LP2MD=$$HOME/local/bin/lp2md
LP2NW=$$HOME/local/bin/lp2nw
BROWSER=chromium-browser

.SILENT:retangle
.SILENT:lp2nw


all: tangle weave

lp2md:
	$(LP2MD) ${SOURCE} > ${MDSRC}

lp2nw:
	$(LP2NW) ${SOURCE} > ${NWSRC}

tangle: lp2nw
	syncweb -lang shell ${NWSRC} ${PROGRAM}

retangle: lp2nw
	rm -f ${PROGRAM}
	syncweb -lang shell ${NWSRC} ${PROGRAM}

weave: lp2md

weave: lp2md
	$(MD2HTML) ${MDSRC} > ${DOC}

pkg: all
	rm -rf ${NAME}
	mkdir ${NAME}
	cp ${MDSRC} ${NAME}/
	cp $$(find . -type f | egrep '\.(c|h|ml)$$') ${NAME}/
	tar cfvz ${NAME}.tar.gz ${NAME}
	mv ${NAME}.tar.gz ../
	mv ${DOC} ../
	rm -rf ${NAME}

clean:
	rm -f ${PROGRAM}.c ${NAME}
	rm -f *.sh
	rm -f *.pl
	rm -f *.html *.md *.nw
	rm -f .*.swp
	rm -f *.tmp
	rm -f *.tex
	rm -f *.bin
	rm -f *.out

.SILENT:run
run: retangle
	sed -i -e '/# nw/d'  ${PROGRAM}
	chmod 0755 ${PROGRAM}
	./${PROGRAM}
