#!/bin/bash -ex

yolk --latest-releases=1
yolk --show-updates
yolk --query-metadata=yolk
yolk --depends=pip
yolk --depends=foo 2>&1 | grep 'foo is not installed'
