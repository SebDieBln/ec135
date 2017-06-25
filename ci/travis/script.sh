#!/bin/bash

set -ev

xmllint --version

for OUTPUT in $(find . -name \*.xml)
do
    xmllint --noout $OUTPUT
done
