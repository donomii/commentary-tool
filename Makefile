all: clean download install run

clean:
	./clean.sh || true

download:
	curl http://mirror.informatik.uni-tuebingen.de/mirror/racket/8.3/racket-8.3-x86_64-macosx-cs.dmg > racket-8.3-x86_64-macosx-cs.dmg
	open racket-8.3-x86_64-macosx-cs.dmg

install:
	./install.sh

run:
	./run.sh
