#! /usr/bin/env sh
# Cleaning directories
echo "Unistalling Glyphs Scripts"
if [ -f "/private/etc/cron.d/sync_git_repos" ] ; then
	sudo rm /private/etc/cron.d/sync_git_repos
fi
if [ -e "/tmp/GlyphsScriptsConfi" ] ; then
	rm -r /tmp/GlyphsScriptsConfi
fi
cd ~/Documents
if [ -d "GlyphsScripts" ] ; then
	rm -rf GlyphsScripts
fi
# Unlinking symbolic links
cd ~/Library/Application\ Support/FontLab/Studio\ 5/Macros/
if [ -h "Glyphs Export.py" ] ; then
	unlink "Glyphs Export.py"
fi 
if [ -h "Glyphs Import.py" ] ; then
	unlink "Glyphs Import.py" 
fi
cd ~/Library/Application\ Support/Glyphs/
if [ -d "Scripts" ] ; then
	cd Scripts/
	if [ -h "BubbleKern/BubbleKern.py" ] ; then
		unlink "BubbleKern/BubbleKern.py"
	fi
	if [ -h "BubbleKern/Delete Bubble Layers.py" ] ; then
		unlink "BubbleKern/Delete Bubble Layers.py"
	fi
	if [ -h "BubbleKern/Make Bubble Layers.py" ] ; then
		unlink "BubbleKern/Make Bubble Layers.py"
	fi
	if [ -d "BubbleKern" ] ; then
		rm -r "BubbleKern"
	fi
	if [ -h "Deutshcmark/Accents" ] ; then
		unlink "Deutshcmark/Accents"
	fi
	if [ -h "Deutshcmark/Font" ] ; then
		unlink "Deutshcmark/Font"
	fi
	if [ -h "Deutshcmark/Glyphs" ] ; then
		unlink "Deutshcmark/Glyphs"
	fi
	if [ -h "Deutshcmark/Metrics" ] ; then
		unlink "Deutshcmark/Metrics"
	fi
	if [ -h "Deutshcmark/Sketching" ] ; then
		unlink "Deutshcmark/Sketching"
	fi
	if [ -d "Deutshcmark" ] ; then
		rm -r "Deutshcmark"
	fi
	if [ -h "GSPen.py" ] ; then
		unlink "GSPen.py"
	fi
	if [ -f "GSPen.pyc" ] ; then
		rm "GSPen.pyc"
	fi
	if [ -h "HuertaTipografica" ] ; then
		unlink "HuertaTipografica"
	fi
	if [ -h "justanotherfoundry" ] ; then
		unlink "justanotherfoundry"
	fi
	if [ -h "mekkablue" ] ; then
		unlink "mekkablue"
	fi
	if [ -h "objectsGS.py" ] ; then
		unlink "objectsGS.py"
	fi
	if [ -f "objectsGS.pyc" ] ; then
		rm "objectsGS.pyc"
	fi
	if [ -h "schriftgestalt/Autopsy.py" ] ; then
		unlink "schriftgestalt/Autopsy.py"
	fi
	if [ -h "schriftgestalt/Delete Images.py" ] ; then
		unlink "schriftgestalt/Delete Images.py"
	fi
	if [ -h "schriftgestalt/Helper" ] ; then
		unlink "schriftgestalt/Helper"
	fi
	if [ -h "schriftgestalt/Import SVG.py" ] ; then
		unlink "schriftgestalt/Import SVG.py"
	fi
	if [ -h "schriftgestalt/Import SVGs2Glyphs.py" ] ; then
		unlink "schriftgestalt/Import SVGs2Glyphs.py"
	fi
	if [ -h "schriftgestalt/Make Unicase Font.py" ] ; then
		unlink "schriftgestalt/Make Unicase Font.py"
	fi
	if [ -h "schriftgestalt/MakeProdunctionFont.py" ] ; then
		unlink "schriftgestalt/MakeProdunctionFont.py"
	fi
	if [ -h "schriftgestalt/Metrics & Classes" ] ; then
		unlink "schriftgestalt/Metrics & Classes"
	fi
	if [ -h "schriftgestalt/Other Scripts" ] ; then
		unlink "schriftgestalt/Other Scripts"
	fi
	if [ -d "schriftgestalt" ] ; then
		rm -r "schriftgestalt"
	fi
	if [ -h "SimonCozens" ] ; then
		unlink "SimonCozens"
	fi
	if [ -h "StringSmash" ] ; then
		unlink "StringSmash"
	fi
	if [ -h "Tosche" ] ; then
		unlink "Tosche"
	fi
	if [ -h "Wei" ] ; then
		unlink "Wei"
	fi
fi
cd ~/Library/Application\ Support/Glyphs/
if [ -d "Plugins" ] ; then
	cd Plugins/
	if [ -h "Autopsy.glyphsPlugin" ] ; then
		unlink "Autopsy.glyphsPlugin"
	fi
	if [ -h "BroadNibber.glyphsFilter" ] ; then
		unlink "BroadNibber.glyphsFilter"
	fi
	if [ -h "CurveEQ.glyphsFilter" ] ; then
		unlink "CurveEQ.glyphsFilter"
	fi
	if [ -h "CutAndShake.glyphsFilter" ] ; then
		unlink "CutAndShake.glyphsFilter"
	fi
	if [ -h "DrawBot.glyphsPlugin" ] ; then
		unlink "DrawBot.glyphsPlugin"
	fi
	if [ -h "FixZeroHandles.glyphsFilter" ] ; then
		unlink "FixZeroHandles.glyphsFilter"
	fi
	if [ -h "FontNote.glyphsPalette" ] ; then
		unlink "FontNote.glyphsPalette"
	fi
	if [ -h "GlyphNote.glyphsPalette" ] ; then
		unlink "GlyphNote.glyphsPalette"
	fi
	if [ -h "GlyphsExpandPathsPreviewTool.glyphsReporter" ] ; then
		unlink "GlyphsExpandPathsPreviewTool.glyphsReporter"
	fi
	if [ -h "GlyphsGit.glyphsPlugin" ] ; then
		unlink "GlyphsGit.glyphsPlugin"
	fi
	if [ -h "GlyphsInLabelColor.glyphsReporter" ] ; then
		unlink "GlyphsInLabelColor.glyphsReporter"
	fi
	if [ -h "InsertInflections.glyphsFilter" ] ; then
		unlink "InsertInflections.glyphsFilter"
	fi
	if [ -h "Inverter.glyphsFilter" ] ; then
		unlink "Inverter.glyphsFilter"
	fi
	if [ -h "LayerGeek.glyphsFilter" ] ; then
		unlink "LayerGeek.glyphsFilter"
	fi
	if [ -h "MakeCorner.glyphsFilter" ] ; then
		unlink "MakeCorner.glyphsFilter"
	fi
	if [ -h "Noodler.glyphsFilter" ] ; then
		unlink "Noodler.glyphsFilter"
	fi
	if [ -h "OffsetPreview.glyphsReporter" ] ; then
		unlink "OffsetPreview.glyphsReporter"
	fi
	if [ -h "RedArrow.glyphsReporter" ] ; then
		unlink "RedArrow.glyphsReporter"
	fi
	if [ -h "ShowAngledHandles.glyphsReporter" ] ; then
		unlink "ShowAngledHandles.glyphsReporter"
	fi
	if [ -h "ShowBlackFill.glyphsReporter" ] ; then
		unlink "ShowBlackFill.glyphsReporter"
	fi
	if [ -h "ShowComponentOrder.glyphsReporter" ] ; then
		unlink "ShowComponentOrder.glyphsReporter"
	fi
	if [ -h "ShowCoordinatesOfSelectedNodes.glyphsReporter" ] ; then
		unlink "ShowCoordinatesOfSelectedNodes.glyphsReporter"
	fi
	if [ -h "ShowCrosshair.glyphsReporter" ] ; then
		unlink "ShowCrosshair.glyphsReporter"
	fi
	if [ -h "ShowExportStatus.glyphsReporter" ] ; then
		unlink "ShowExportStatus.glyphsReporter"
	fi
	if [ -h "ShowFilledPreview.glyphsReporter" ] ; then
		unlink "ShowFilledPreview.glyphsReporter"
	fi
	if [ -h "ShowHandlesEverywhere.glyphsReporter" ] ; then
		unlink "ShowHandlesEverywhere.glyphsReporter"
	fi
	if [ -h "ShowInterpolation.glyphsReporter" ] ; then
		unlink "ShowInterpolation.glyphsReporter"
	fi
	if [ -h "ShowKernBubbles.glyphsReporter" ] ; then
		unlink "ShowKernBubbles.glyphsReporter"
	fi
	if [ -h "ShowKerningGroupReference.glyphsReporter" ] ; then
		unlink "ShowKerningGroupReference.glyphsReporter"
	fi
	if [ -h "ShowMetricsKeys.glyphsReporter" ] ; then
		unlink "ShowMetricsKeys.glyphsReporter"
	fi
	if [ -h "ShowNodeCount.glyphsReporter" ] ; then
		unlink "ShowNodeCount.glyphsReporter"
	fi
	if [ -h "ShowPathArea.glyphsReporter" ] ; then
		unlink "ShowPathArea.glyphsReporter"
	fi
	if [ -h "ShowRotated.glyphsReporter" ] ; then
		unlink "ShowRotated.glyphsReporter"
	fi
	if [ -h "ShowSiblings.glyphsReporter" ] ; then
		unlink "ShowSiblings.glyphsReporter"
	fi
	if [ -h "Symmetry.glyphsReporter" ] ; then
		unlink "Symmetry.glyphsReporter"
	fi
	if [ -h "word-o-mat.glyphsPlugin" ] ; then
		unlink "word-o-mat.glyphsPlugin"
	fi
fi
echo "Unistallation complete"
