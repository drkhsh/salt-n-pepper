#!/bin/sh
set -ex

git fetch dotfiles master
git subtree pull --prefix common/dotfiles dotfiles master --squash
