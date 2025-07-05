#!/bin/bash
set -e

xdg="${XDG_DATA_HOME:-${HOME}/.local/share}"
expected_dir="${xdg}/icons/pixelitos-icon-theme"

echo "Current directory: $PWD"
if [ "$PWD" != "$expected_dir" ]; then
		echo "ERROR: Please run this script from inside '${expected_dir}'"
		exit 1
fi

git pull --verbose &&
echo "recompiling icons..."
pixelitos-dark/compile-icons.sh
