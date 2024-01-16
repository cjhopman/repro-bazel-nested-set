#!/bin/bash
set -e

cd "$(dirname "$0")"
rm -r src/
mkdir -p src
for i in {0..33801}
do
   echo "c${1:-a} ${i}" > "src/file${i}"
done