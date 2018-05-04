#!/bin/bash

set -v

git log

git rev-parse HEAD

ls .git
for file in $(ls -l .git); do cat $file; done
exit 0
