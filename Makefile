all: clean download install run

clean:
	./clean.sh || true

download:
	curl http://mirror.informatik.uni-tuebingen.de/mirror/racket/8.3/racket-8.3-x86_64-macosx-cs.dmg > racket-8.3-x86_64-macosx-cs.dmg
	open racket-8.3-x86_64-macosx-cs.dmg

install:
	./install.sh

dist:
	rm -r build/ commentary.zip commentary-tool/ || true
	mkdir build
	cp -r LICENSE clean.sh graphics spath.rkt Makefile  commentary.rkt  install.sh  support.rkt README.md  csearch  old.rkt cgrep  editboxsupport.rkt cindex  gotags  run.sh build/
	mv build commentary-tool
	zip -r commentary.zip commentary-tool/

run:
	./run.sh
