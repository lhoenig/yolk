#!/bin/bash -eux

grep '\$' README.rst | grep -iv install | grep -iv upgrade | \
    sed 's/\$/python -m /' | bash -eux
