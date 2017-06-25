#!/bin/bash

set -e

xmllint --version

for OUTPUT in $(find . -name \*.xml)
do
    echo Checking XML syntax of $OUTPUT
    xmllint --noout $OUTPUT
done
