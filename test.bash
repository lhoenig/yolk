#!/bin/bash -ex

yolk --latest-releases=1
yolk --show-updates
yolk --query-metadata=yolk
yolk --depends=pip

# I would grep to confirm the expected error. But this piece of shit stops
# printing the error message if I pipe it.
#yolk --depends=foo 2>&1 | grep 'foo is not installed'
yolk --depends=foo
