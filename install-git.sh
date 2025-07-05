#!/bin/bash

set -e

xdg="${XDG_DATA_HOME:-${HOME}/.local/share}"
expected_dir="${xdg}/icons/pixelitos-icon-theme"

echo "Current directory: $PWD"
if [ "$PWD" != "$expected_dir" ]; then
		echo "ERROR: Please run this script from inside '${expected_dir}'"
		exit 1
fi

cd ..

ln -sv $expected_dir/pixelitos-dark pixelitos-dark || true
ln -sv $expected_dir/pixelitos-light pixelitos-light || true

cd pixelitos-dark
compile-icons.sh

echo "Icons installed in '${xdg}' as Symlinks"
