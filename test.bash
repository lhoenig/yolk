#!/bin/bash -ex

python -m yolk --latest-releases=1
python -m yolk --show-updates
python -m yolk --show-updates --user
python -m yolk --query-metadata=autopep8 | grep -i 'license:'
python -m yolk --depends=pip
python -m yolk --list
python -m yolk --list pip
python -m yolk --list --metadata autopep8 | grep -i 'license:'

python -m yolk --depends=fake_foo 2>&1 | grep 'fake_foo is not installed'

if [ "$TRAVIS_PYTHON_VERSION" != "2.7" ]
then
    python -m doctest yolk/utils.py
fi

echo -e '\x1b[01;32mOK\x1b[0m'
