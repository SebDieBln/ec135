#!/bin/bash

set -e

xmllint --version

export XMLLINT_INDENT="    "

for OUTPUT in $(find . -name \*.xml)
do
    echo Checking XML syntax of $OUTPUT
    xmllint --noout $OUTPUT

    echo Checking XML indentation of $OUTPUT
    xmllint --format $OUTPUT | diff --brief --ignore-blank-lines --to-file=- $OUTPUT

done
