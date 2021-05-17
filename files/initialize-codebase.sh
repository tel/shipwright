#!/bin/sh

set -ex

usage() {
    echo "usage $0 destination"
    exit 1
}

[ $# -lt 1 ] || usage

CODEBASE=$(/usr/local/bin/ucm transcript -save-codebase /usr/local/share/share.transcript.md | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')

mv CODEBASE $1


