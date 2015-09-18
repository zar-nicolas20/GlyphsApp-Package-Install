#!/bin/sh
# Place this .sh parent to the GlyphScript directory
cd "$(dirname "$0")"
for REPO in GlyphsScripts/*; do
	echo "================================="
	echo "Updating $REPO"
	cd $REPO/
	git pull
	cd ../../
	echo "Updated $(basename $REPO)"
	echo "================================="
	echo "";
done
