#!/bin/sh
set -e

xdg="${XDG_DATA_HOME:-${HOME}/.local/share}"
ICON_DIRS="${xdg}/icons"
DIR_DARK="${xdg}/icons/pixelitos-dark"
DIR_LIGHT="${xdg}/icons/pixelitos-light"
ICONS_128="${DIR_DARK}/128"

install_pixelitos_theme() {
	#echo "Creating theme directory: ${DIR_DARK}"
	#mkdir -p "${DIR_DARK}"
	#echo "Creating theme directory: ${DIR_LIGHT}"
	#mkdir -p "${DIR_LIGHT}"

	if cp -rv ./pixelitos-dark "${DIR_DARK}"; then
		echo "DONE: Install ${DIR_DARK}"
	else
		echo "Error: Failed to copy files."
		exit 1
	fi

	if cp -rv ./install.sh "${DIR_DARK}"; then
		echo "DONE: Install ${DIR_DARK}"
	else
		echo "Error: Failed to copy files."
		exit 1
	fi

	if cp -rv ./pixelitos-light "${DIR_LIGHT}"; then
		echo "DONE: Install ${DIR_LIGHT}"
	else
		echo "Error: Failed to copy files."
		exit 1
	fi
}

compile_icons() {
	echo "Compiling 128x128 icons..."
	if ./pixelitos-dark/compile-icons.sh; then
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

if [ ! -d "${ICONS_128}" ]; then
	echo "${ICONS_128} folder does not exist. Compiling icons..."
	./pixelitos-dark/compile-icons.sh
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
