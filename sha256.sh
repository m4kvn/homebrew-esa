#!/bin/sh -eu

[ -z "${1:-}" ] && echo "Please input version." >& 2 && exit 1

wget "https://github.com/m4kvn/homebrew-esa/archive/$1.tar.gz" && \
trap "rm -f $1.tar.gz" 0 1 2

openssl dgst -sha256 $1.tar.gz
