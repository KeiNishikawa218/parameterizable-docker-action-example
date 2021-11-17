#!/bin/sh -l

version=$(cat /etc/alpine-release)

echo bbbb
echo "::set-output name=version::${version}"
