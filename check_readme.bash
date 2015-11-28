#!/bin/bash -eux

clean()
{
    rm -rf ./Paste-*.tar.gz ./Paste_svn
}
trap clean EXIT

grep '\$' README.rst | grep -iv install | grep -iv upgrade | \
    sed 's/\$/python -m /' | bash -eux
