#! /usr/bin/env bash
# Cleaning directories
echo Initiating Glyphs Scripts setup
if [ -e "$/private/etc/cron.d/sync_git_repos" ] ; then
	sudo rm /private/etc/cron.d/sync_git_repos
fi
if [! -e "$/etc/cron.d" ] ; then
	sudo mkdir /etc/cron.d
fi
cd /etc/cron.d
if [ -e "$/tmp/GlyphsScriptsConfi" ] ; then
	rm /tmp/GlyphsScriptsConfi
fi
mkdir /tmp/GlyphsScriptsConfi
cd ~/Documents
if [ -e "$GlyphsScripts/" ] ; then
	rm GlyphsScripts/
fi
mkdir GlyphsScripts
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
rm ~/Library/Application\ Support/Glyphs/Scripts/Deutshcmark
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
rm ~/Library/Application\ Support/Glyphs/Scripts/schriftgestalt
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
rm ~/Library/Application\ Support/Glyphs/Scripts/BubbleKern
mkdir ~/Library/Application\ Support/Glyphs/Scripts/BubbleKern
cd ~/Library/Application\ Support/Glyphs/Scripts/BubbleKern/
ln -s ~/Documents/GlyphsScripts/Tosche_BubbleKern/BubbleKern.py BubbleKern.py
ln -s ~/Documents/GlyphsScripts/Tosche_BubbleKern/Delete\ Bubble\ Layers.py Delete\ Bubble\ Layers.py
ln -s ~/Documents/GlyphsScripts/Tosche_BubbleKern/Make\ Bubble\ Layers.py Make\ Bubble\ Layers.py
cd ~/Documents/GlyphsScripts/
echo '==================================='
echo 'Done Tosche BubbleKern'
echo '==================================='
sudo ditto /tmp/GlyphsScriptsConfi/sync_git_repos /private/etc/cron.d/sync_git_repos
echo Finished Glyphs Scripts setup
