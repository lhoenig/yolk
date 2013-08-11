#!/bin/bash -ex

python -m yolk --latest-releases=1
python -m yolk --show-updates
python -m yolk --query-metadata=yolk
python -m yolk --depends=pip

# I would grep to confirm the expected error. But this piece of shit stops
# printing the error message if I pipe it.
#python -m yolk --depends=foo 2>&1 | grep 'foo is not installed'
python -m yolk --depends=foo

python -m doctest yolk/*.py
