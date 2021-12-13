#!/bin/sh
/Applications/Racket\ v8.3/bin/raco pkg install anaphoric
/Applications/Racket\ v8.3/bin/raco pkg install --deps search-auto http-easy

/Applications/Racket\ v8.3/bin/racket commentary.rkt
