#! /usr/bin/env bash
# Cleaning directories
echo "Initiating Glyphs Scripts setup"
if [ -f "/private/etc/cron.d/sync_git_repos" ] ; then
	sudo rm /private/etc/cron.d/sync_git_repos
fi
if [ ! -f "$/etc/cron.d" ] ; then
	sudo mkdir /etc/cron.d
fi
cd /etc/cron.d
if [ -e "/tmp/GlyphsScriptsConfi" ] ; then
	rm -r /tmp/GlyphsScriptsConfi
fi
mkdir /tmp/GlyphsScriptsConfi
cd ~/Documents
if [ -d "GlyphsScripts" ] ; then
	rm -rf GlyphsScripts
fi
mkdir GlyphsScripts
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
cd ~/Library/Application\ Support/Glyphs/
if [ ! -d "$Scripts" ] ; then
	mkdir Scripts
fi
# Making Plugin folder if there isn't
cd ~/Library/Application\ Support/Glyphs/
if [ ! -d "$Plugins" ] ; then
	mkdir Plugins
fi
cd ~/Documents
cd GlyphsScripts
# Cloning Repositories
echo 'Cloning Repositories'
git clone https://github.com/BelaFrank/StringSmash.git BelaFrank_StringSmash
cd BelaFrank_StringSmash
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/BelaFrank_StringSmash/Glyphs/StringSmash StringSmash
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done BelaFrank String Smash Scripts'
echo '==================================='
git clone https://github.com/DeutschMark/Glyphsapp-Plugins.git DeutschMark_Glyphsapp-Plugins
cd DeutschMark_Glyphsapp-Plugins
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Plugins/ShowKerningGroupReference/ShowKerningGroupReference.glyphsReporter ShowKerningGroupReference.glyphsReporter
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Plugins/ShowNodeCount/ShowNodeCount.glyphsReporter ShowNodeCount.glyphsReporter
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Plugins/ShowRotated/ShowRotated.glyphsReporter ShowRotated.glyphsReporter
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Plugins/ShowSiblings/ShowSiblings.glyphsReporter ShowSiblings.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done DeutschMark Glyphsapp Plugins'
echo '==================================='
git clone https://github.com/DeutschMark/Glyphsapp-Scripts.git DeutschMark_Glyphsapp-Scripts
cd DeutschMark_Glyphsapp-Scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
if [ -e "~/Library/Application Support/Glyphs/Scripts/Deutshcmark" ] ; then
	rm -r ~/Library/Application\ Support/Glyphs/Scripts/Deutshcmark
fi
mkdir ~/Library/Application\ Support/Glyphs/Scripts/Deutshcmark
cd ~/Library/Application\ Support/Glyphs/Scripts/Deutshcmark/
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Scripts/Accents/ Accents
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Scripts/Font/ Font
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Scripts/Glyphs/ Glyphs
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Scripts/Metrics/ Metrics
ln -s ~/Documents/GlyphsScripts/DeutschMark_Glyphsapp-Scripts/Sketching/ Sketching
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done DeutschMark Glyphsapp Scripts'
echo '==================================='
git clone https://github.com/jenskutilek/Curve-Equalizer.git jenskutilek_Curve-Equalizer
cd jenskutilek_Curve-Equalizer
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/jenskutilek_Curve-Equalizer/Glyphs/CurveEQ.glyphsFilter CurveEQ.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done jenskutilek Curve-Equalizer Plugin'
echo '==================================='
git clone https://github.com/jenskutilek/RedArrow-Glyphs.git jenskutilek_RedArrow-Glyphs
cd jenskutilek_RedArrow-Glyphs
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/jenskutilek_RedArrow-Glyphs/RedArrow.glyphsReporter RedArrow.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done jenskutilek RedArrow-Glyphs Plugin' 
echo '==================================='
git clone https://github.com/justanotherfoundry/glyphsapp-scripts.git justanotherfoundry_glyphsapp-scripts
cd justanotherfoundry_glyphsapp-scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/justanotherfoundry_glyphsapp-scripts/ justanotherfoundry
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done justanotherfoundry Scripts'
echo '==================================='
git clone https://github.com/mekkablue/BroadNibber.git mekkablue_BroadNibber
cd mekkablue_BroadNibber
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_BroadNibber/BroadNibber.glyphsFilter BroadNibber.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Broad Nibber Plugin'
echo '==================================='
git clone https://github.com/mekkablue/CutAndShake.git mekkablue_CutAndShake
cd mekkablue_CutAndShake
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_CutAndShake/CutAndShake.glyphsFilter CutAndShake.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Cut And Shake Plugin'
echo '==================================='
git clone https://github.com/mekkablue/FixZeroHandles.git mekkablue_FixZeroHandles
cd mekkablue_FixZeroHandles
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_FixZeroHandles/FixZeroHandles.glyphsFilter FixZeroHandles.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue FixZeroHandles Plugin'
echo '==================================='
git clone https://github.com/mekkablue/Glyphs-Scripts.git mekkablue_Glyphs-Scripts
cd mekkablue_Glyphs-Scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/mekkablue_Glyphs-Scripts/ mekkablue
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Scripts'
echo '==================================='
git clone https://github.com/mekkablue/InsertInflections.git mekkablue_InsertInflections
cd mekkablue_InsertInflections
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_InsertInflections/InsertInflections.glyphsFilter InsertInflections.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Insert Inflections Plugin'
echo '==================================='
git clone https://github.com/mekkablue/Inverter.git mekkablue_Inverter
cd mekkablue_Inverter
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_Inverter/Inverter.glyphsFilter Inverter.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Inverter Plugin'
echo '==================================='
git clone https://github.com/mekkablue/LayerGeek.git mekkablue_LayerGeek
cd mekkablue_LayerGeek
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_LayerGeek/LayerGeek.glyphsFilter LayerGeek.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue LayerGeek Plugin'
echo '==================================='
git clone https://github.com/mekkablue/MakeCorner.git mekkablue_MakeCorner
cd mekkablue_MakeCorner
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_MakeCorner/MakeCorner.glyphsFilter MakeCorner.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue MakeCorner Plugin'
echo '==================================='
git clone https://github.com/mekkablue/NotePalettes.git mekkablue_NotePalettes
cd mekkablue_NotePalettes
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_NotePalettes/FontNote.glyphsPalette FontNote.glyphsPalette
ln -s ~/Documents/GlyphsScripts/mekkablue_NotePalettes/GlyphNote.glyphsPalette GlyphNote.glyphsPalette
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Note Palettes Plugin'
echo '==================================='
git clone https://github.com/mekkablue/Noodler.git mekkablue_Noodler
cd mekkablue_Noodler
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_Noodler/Noodler.glyphsFilter Noodler.glyphsFilter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Noodler Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowAngledHandles.git mekkablue_ShowAngledHandles
cd mekkablue_ShowAngledHandles
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowAngledHandles/ShowAngledHandles.glyphsReporter ShowAngledHandles.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Angled Handles Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowComponentOrder.git mekkablue_ShowComponentOrder
cd mekkablue_ShowComponentOrder
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowComponentOrder/ShowComponentOrder.glyphsReporter ShowComponentOrder.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Component Order Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowCoordinatesOfSelectedNodes.git mekkablue_ShowCoordinatesOfSelectedNodes
cd mekkablue_ShowCoordinatesOfSelectedNodes
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowCoordinatesOfSelectedNodes/ShowCoordinatesOfSelectedNodes.glyphsReporter ShowCoordinatesOfSelectedNodes.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Coordinates Of Selected Nodes Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowCrosshair.git mekkablue_ShowCrosshair
cd mekkablue_ShowCrosshair
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowCrosshair/ShowCrosshair.glyphsReporter ShowCrosshair.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Cross hair Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowFilledPreview.git mekkablue_ShowFilledPreview
cd mekkablue_ShowFilledPreview
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowFilledPreview/ShowFilledPreview.glyphsReporter ShowFilledPreview.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Filled Preview Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowGlyphsInLabelColor.git mekkablue_ShowGlyphsInLabelColor
cd mekkablue_ShowGlyphsInLabelColor
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowGlyphsInLabelColor/GlyphsInLabelColor.glyphsReporter GlyphsInLabelColor.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Glyphs In Label Color Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowHandlesEverywhere.git mekkablue_ShowHandlesEverywhere
cd mekkablue_ShowHandlesEverywhere
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowHandlesEverywhere/ShowHandlesEverywhere.glyphsReporter ShowHandlesEverywhere.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Handles Everywhere Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowInterpolations.git mekkablue_ShowInterpolations
cd mekkablue_ShowInterpolations
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowInterpolations/ShowInterpolation.glyphsReporter ShowInterpolation.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Interpolations Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowMetricsKeys.git mekkablue_ShowMetricsKeys
cd mekkablue_ShowMetricsKeys
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowMetricsKeys/ShowMetricsKeys.glyphsReporter ShowMetricsKeys.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Metrics Keys Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowOffsetCurveParameterPreview.git mekkablue_ShowOffsetCurveParameterPreview
cd mekkablue_ShowOffsetCurveParameterPreview
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowOffsetCurveParameterPreview/OffsetPreview.glyphsReporter OffsetPreview.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Show Offset Curve Parameter Preview Plugin'
echo '==================================='
git clone https://github.com/mekkablue/Symmetry.git mekkablue_Symmetry
cd mekkablue_Symmetry
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_Symmetry/Symmetry.glyphsReporter Symmetry.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue Symmetry Plugin'
echo '==================================='
git clone https://github.com/mekkablue/ShowExportStatus.git mekkablue_ShowExportStatus
cd mekkablue_ShowExportStatus
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/mekkablue_ShowExportStatus/ShowExportStatus.glyphsReporter ShowExportStatus.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done mekkablue ShowExportStatus Plugin'
echo '==================================='
git clone https://github.com/schriftgestalt/Autopsy-Plugin.git schriftgestalt_Autopsy-Plugin
cd schriftgestalt_Autopsy-Plugin
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Autopsy-Plugin/Autopsy.glyphsPlugin Autopsy.glyphsPlugin
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done schriftgestalt Autopsy Plugin'
echo '==================================='
git clone https://github.com/schriftgestalt/Glyphs-Plugins.git schriftgestalt_Glyphs-Plugins
cd schriftgestalt_Glyphs-Plugins
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Plugins/GlyphsExpandPathsPreviewTool.glyphsReporter GlyphsExpandPathsPreviewTool.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done schriftgestalt  Expand Paths Preview Tool Plugin'
echo '==================================='
git clone https://github.com/schriftgestalt/Glyphs-Scripts.git schriftgestalt_Glyphs-Scripts
cd schriftgestalt_Glyphs-Scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
if [ -e "~/Library/Application Support/Glyphs/Scripts/schriftgestalt" ] ; then
	rm -r ~/Library/Application\ Support/Glyphs/Scripts/schriftgestalt
fi
mkdir ~/Library/Application\ Support/Glyphs/Scripts/schriftgestalt
cd ~/Library/Application\ Support/Glyphs/Scripts/schriftgestalt/
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Autopsy.py Autopsy.py
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Delete\ Images.py Delete\ Images.py
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Helper/ Helper
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Import\ SVG.py Import\ SVG.py
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Import\ SVGs2Glyphs.py Import\ SVGs2Glyphs.py
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Make\ Unicase\ Font.py Make\ Unicase\ Font.py
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/MakeProdunctionFont.py MakeProdunctionFont.py
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Metrics\ \&\ Classes/ Metrics\ \&\ Classes
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Other\ Scripts/ Other\ Scripts
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/objectsGS.py objectsGS.py
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/GSPen.py GSPen.py
cd ~/Library/Application\ Support/FontLab/Studio\ 5/Macros/
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Glyphs\ Export.py Glyphs\ Export.py 
ln -s ~/Documents/GlyphsScripts/schriftgestalt_Glyphs-Scripts/Glyphs\ Import.py Glyphs\ Import.py 
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done schriftgestalt Scripts'
echo '==================================='
git clone https://github.com/schriftgestalt/word-o-mat.git schriftgestalt_word-o-mat
cd schriftgestalt_word-o-mat
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/schriftgestalt_word-o-mat/word-o-mat.glyphsPlugin word-o-mat.glyphsPlugin
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done schriftgestalt word-o-mat Plugin'
echo '==================================='
git clone https://github.com/schriftgestalt/DrawBotGlyphsPlugin.git schriftgestalt_DrawBotGlyphsPlugin
cd schriftgestalt_DrawBotGlyphsPlugin
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/schriftgestalt_DrawBotGlyphsPlugin/DrawBot.glyphsPlugin DrawBot.glyphsPlugin
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done schriftgestalt DrawBotGlyphs Plugin'
echo '==================================='
git clone https://github.com/Tosche/Glyphs-Scripts.git Tosche_Glyphs-Scripts
cd Tosche_Glyphs-Scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/Tosche_Glyphs-Scripts/ Tosche
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done Tosche Scripts'
echo '==================================='
git clone https://github.com/Tosche/ShowBlackFill.git Tosche_ShowBlackFill
cd Tosche_ShowBlackFill
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/Tosche_ShowBlackFill/ShowBlackFill.glyphsReporter ShowBlackFill.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done Tosche Show Black Fill Plugin'
echo '==================================='
git clone https://github.com/Tosche/BubbleKern.git Tosche_BubbleKern
cd Tosche_BubbleKern
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/Tosche_BubbleKern/ShowKernBubbles.glyphsReporter ShowKernBubbles.glyphsReporter
if [ -e "~/Library/Application Support/Glyphs/Scripts/BubbleKern" ] ; then
	rm -r ~/Library/Application\ Support/Glyphs/Scripts/BubbleKern
fi
mkdir ~/Library/Application\ Support/Glyphs/Scripts/BubbleKern
cd ~/Library/Application\ Support/Glyphs/Scripts/BubbleKern/
ln -s ~/Documents/GlyphsScripts/Tosche_BubbleKern/BubbleKern.py BubbleKern.py
ln -s ~/Documents/GlyphsScripts/Tosche_BubbleKern/Delete\ Bubble\ Layers.py Delete\ Bubble\ Layers.py
ln -s ~/Documents/GlyphsScripts/Tosche_BubbleKern/Make\ Bubble\ Layers.py Make\ Bubble\ Layers.py
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done Tosche BubbleKern'
echo '==================================='
git clone https://github.com/simoncozens/GlyphsGit.git SimonCozens_GlyphsGit
cd SimonCozens_GlyphsGit
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/SimonCozens_GlyphsGit/GlyphsGit.glyphsPlugin GlyphsGit.glyphsPlugin
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done SimonCozens GlyphsGit Plugin'
echo '==================================='
git clone https://github.com/simoncozens/GlyphsPlugins.git SimonCozens_ShowPathArea
cd SimonCozens_ShowPathArea
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n*png\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Plugins/
ln -s ~/Documents/GlyphsScripts/SimonCozens_ShowPathArea/ShowPathArea.glyphsReporter ShowPathArea.glyphsReporter
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done SimonCozens ShowPathArea Plugin'
echo '==================================='
git clone https://github.com/simoncozens/GlyphsScripts.git SimonCozens_Scripts
cd SimonCozens_Scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/SimonCozens_Scripts/ SimonCozens
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo "Done SimonCozens's Scripts"
echo '==================================='
git clone https://github.com/huertatipografica/huertatipografica-scripts.git HuertaTipografica_Scripts
cd HuertaTipografica_Scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/HuertaTipografica_Scripts/ HuertaTipografica
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo "Done Huerta Tipografica's Scripts"
echo '==================================='
git clone https://github.com/weiweihuanghuang/wei-glyphs-scripts.git wei_scripts
cd wei_scripts
printf '*.vfbak\n*.pyc\n.DS_Store\nREADME.*\nLICENSE.*\n.gitignore\n*.vdiff\nLICENSE\n' > .gitignore
printf '*/5 * * * * app cd '$(pwd)' && git fetch -q --all -p\n' >> /tmp/GlyphsScriptsConfi/sync_git_repos
cd ~/Library/Application\ Support/Glyphs/Scripts/
ln -s ~/Documents/GlyphsScripts/wei_scripts/ Wei
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo "Done Wei Huang's Scripts"
echo '==================================='
sudo ditto /tmp/GlyphsScriptsConfi/sync_git_repos /private/etc/cron.d/sync_git_repos
echo Finished Glyphs Scripts setup
