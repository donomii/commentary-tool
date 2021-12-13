#!/bin/sh

pacman -S racket 8.3-1
curl http://mirror.informatik.uni-tuebingen.de/mirror/racket/8.3/racket-8.3-x86_64-macosx-cs.dmg > racket-8.3-x86_64-macosx-cs.dmg
open racket-8.3-x86_64-macosx-cs.dmg

go get -u github.com/google/codesearch
go build -v  github.com/google/codesearch/cmd/cgrep
go build -v  github.com/google/codesearch/cmd/cindex
go build -v  github.com/google/codesearch/cmd/csearch

go get -u github.com/jstemmer/gotags
go build github.com/jstemmer/gotags
