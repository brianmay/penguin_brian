#!/bin/sh
set -ex

if [ -n "$(git status --porcelain)" ]; then
    echo "Working directory is not clean" >&2
    exit 1
fi

VCS_REF="$(git rev-parse HEAD)"
BUILD_DATE="$(date --iso-8601=seconds)"
bundle install
bundle exec jekyll build --destination html

rsync --delete -rv html/ brian@master.linuxpenguins.xyz:/var/www/html/brian
