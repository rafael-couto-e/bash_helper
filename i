#!/bin/bash

XCD="open -a Xcode"
BASE="~/XcodeProjects"

if [ -z "$1" ]; then
	echo "Missing argument for: project name."
	echo "Use --help for more information."
else
	if [ "$1" == "--help" ]; then
		echo -e "\nChanges the current directory to the desired Xcode project's directory."
		echo -e "\nUsage: . cdi [--help] <project_name>."
		echo -e "\nCurrently mapped projects:"
		echo "	foo:		$BASE/foo-ios"
		echo -e "	bar:		$BASE/bar-ios \n"
	else
		DIR="$HOME/XcodeProjects"
		PROJ="$1"

		if [ "$PROJ" == 'foo' ]; then
			"$XCD" "$DIR"/foo-ios/Foo.xcodeproj
		elif [ "$PROJ" == 'bar' ]; then
			"$XCD" "$DIR"/bar-ios/Bar.xcworkspace
		else
			echo "Invalid argument for: project name."
		fi

		unset DIR
		unset PROJ
	fi
fi

unset XCD
unset BASE