#!/bin/sh

if [ ! -d "128" ]; then
  mkdir -v 128
fi

cp -rvn 16/* 128
find 128 -type f -name "*.png" -mmin -1 -exec mogrify -resize 128x128! -filter point -verbose {} \; &&
sleep 1 && gtk-update-icon-cache .
