#!/bin/sh

pacman -S racket 8.3-1

go get -u github.com/google/codesearch
go build -v  github.com/google/codesearch/cmd/cgrep
go build -v  github.com/google/codesearch/cmd/cindex
go build -v  github.com/google/codesearch/cmd/csearch

go get -u github.com/jstemmer/gotags
go build github.com/jstemmer/gotags

/Applications/Racket\ v8.3/bin/raco pkg install anaphoric
/Applications/Racket\ v8.3/bin/raco pkg install --deps search-auto http-easy
