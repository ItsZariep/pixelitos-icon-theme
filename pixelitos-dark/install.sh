#!/bin/sh
set -e

xdg="${XDG_DATA_HOME:-${HOME}/.local/share}"
DIR="${xdg}/icons/pixelitos-icon-theme"
ICON_FOLDER="${DIR}/128"

install_pixelitos_theme() {
	echo "Creating theme directory: ${DIR}"
	mkdir -p "${DIR}"

	if cp -r ./* "${DIR}"; then
		echo "Installation successful!"
	else
		echo "Error: Failed to copy files."
		exit 1
	fi
}

compile_icons() {
	echo "Compiling 128x128 icons..."
	if ./compile-icons.sh; then
		echo "Icons compiled successfully!"
	else
		echo "Error: Failed to compile icons."
		exit 1
	fi
}

echo "Do you want to install 'Pixelitos icon theme'? (Y/n)"
read -r answer
answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
case "$answer" in
	y|yes|"")
		install_pixelitos_theme
		;;
	n|no)
		echo "Installation skipped."
		;;
	*)
		echo "Invalid input. Skipping installation."
		;;
esac

if [ ! -d "${ICON_FOLDER}" ]; then
	echo "'128' folder does not exist. Compiling icons..."
	compile_icons
else
	echo "Do you want to (re)compile 128x128 icons? (Y/n)"
	read -r answer
	answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
	case "$answer" in
		y|yes|"")
			compile_icons
			;;
		n|no)
			echo "Skipping recompilation."
			;;
		*)
			echo "Invalid input. Skipping recompilation."
			;;
	esac
fi
