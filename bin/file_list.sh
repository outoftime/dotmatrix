#!/usr/bin/env bash
set -e

dir=$PWD

# Get list of files to link
includes=".vim"
excludes=".hashrc"
base="$(find . -depth 1 -name '.*' -not -name '.*.local' -type f | sed 's#^\./##' | grep -vF $excludes)"
files="$base $includes"
echo $files
