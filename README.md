# GlyphsApp-Package-Install
This is a Bash shell file to install most of the Scripts and Plugins for GlyphsApp.

This Bash shell creates a clone of most of the repositories of Glyphs's Plugins and scripts hosted in GitHub.

Additionaly, this script creates a **sync_git_repos** in `/private/etc/cron.d/` that keep up-to-date the local repositories, doing `fetch` each 5 minutes.

# Install Notes:
1. Download `GlyphsScriptsConfi.sh` from this repository
2. Open Terminal:
3. Go to the same folder where have been downloaded `GlyphsScriptsConfi.sh`. e.g. If  `GlyphsScriptsConfi.sh` was downloaded in the **Downloads** folder, then type in the terminal:  

   ```
   cd ~/Downloads/
   ```  

4. Run the `GlyphsScriptsConfi.sh` calling the `sh` enviroment. e.g. Type in the terminal window:  

   ```
   sh GlyphsScriptsConfi.sh
   ```  

5. At the begining of the installation, you will be asked for the user password. Type the password in order to have privilegies to write `/private/etc/cron.d/sync_git_repos`
6. Forget of keeping updating the repositories, but if you want to be able to update them, so you only need to run `GlyphsScripts_updater.sh` in the same way that it was mentioned with other shell scripts, type in the terminal:  
   
   ```
   sh GlyphsScripts_updater.sh
   ```  

   And you will have updated all repositories.

# Reinstall Notes:
1. Run the `GlyphsScriptsConfi.sh` calling the `sh` enviroment. e.g. Type in the terminal window:  

   ```
   sh GlyphsScriptsConfi.sh
   ```  

2. At the begining of the reinstallation, you will be asked for the user password. Type the password in order to have privilegies to write `/private/etc/cron.d/sync_git_repos`

# Uninstall Notes:
You only need to run `GlyphsScriptsUninstall.sh`, put your user password to deleted those file written in special folders.
   ```
   sh GlyphsScriptsUninstall.sh
   ```

###Repertoire of Plugins and Scripts:

* [BelaFrank String Smash Scripts](https://github.com/BelaFrank/StringSmash)
* [DeutschMark Show Smart Plumblines Plugin](https://github.com/DeutschMark/Show-Smart-Plumblines)
  * [DeutschMark Uncover xHeight Plugin](https://github.com/DeutschMark/Uncover-xHeight)
  * [DeutschMark Show Siblings Plugin](https://github.com/DeutschMark/Show-Siblings)
  * [DeutschMark Show Distance And Angle Of Nodes Plugin](https://github.com/DeutschMark/Show-Distance-And-Angle-Of-Nodes)
  * [DeutschMark Show Next Master Plugin](https://github.com/DeutschMark/Show-Next-Master)
  * [DeutschMark Show Kerning Group Reference Plugin](https://github.com/DeutschMark/Show-Kerning-Group-Reference)
  * [DeutschMark Show Rotated Plugin](https://github.com/DeutschMark/Show-Rotated)
  * [DeutschMark Show Label Color Plugin](https://github.com/DeutschMark/Show-Label-Color)
  * [DeutschMark Show Node Count Plugin](https://github.com/DeutschMark/Show-Node-Count)
  * [DeutschMark Glyphsapp Scripts](https://github.com/DeutschMark/Glyphsapp-Scripts)
* [GuidoFerreyra Glyphs-Scripts](https://github.com/guidoferreyra/Glyphs-Scripts)
  * [GuidoFerreyra ShowNextFont](https://github.com/guidoferreyra/ShowNextFont)
  * [GuidoFerreyra ShowNextFontAnchors](https://github.com/guidoferreyra/ShowNextFontAnchors)
  * [GuidoFerreyra showAnchorCoordinates](https://github.com/guidoferreyra/showAnchorCoordinates)
  * [GuidoFerreyra showCoordinates](https://github.com/guidoferreyra/showCoordinates)
* [jenskutilek Curve-Equalizer Plugin](https://github.com/jenskutilek/Curve-Equalizer)
  * [jenskutilek RedArrow-Glyphs Plugin](https://github.com/jenskutilek/RedArrow-Glyphs)
* [justanotherfoundry Scripts](https://github.com/justanotherfoundry/glyphsapp-scripts)
* [mekkablue Broad Nibber Plugin](https://github.com/mekkablue/BroadNibber)
  * [mekkablue Cut And Shake Plugin](https://github.com/mekkablue/CutAndShake)
  * [mekkablue FixZeroHandles Plugin](https://github.com/mekkablue/FixZeroHandles)
  * [mekkablue Scripts](https://github.com/mekkablue/Glyphs-Scripts)
  * [mekkablue Insert Inflections Plugin](https://github.com/mekkablue/InsertInflections)
  * [mekkablue Inverter Plugin](https://github.com/mekkablue/Inverter)
  * [mekkablue LayerGeek Plugin](https://github.com/mekkablue/LayerGeek)
  * [mekkablue MakeCorner Plugin](https://github.com/mekkablue/MakeCorner)
  * [mekkablue NotePalettes](https://github.com/mekkablue/NotePalettes)
  * [mekkablue Noodler Plugin](https://github.com/mekkablue/Noodler)
  * [mekkablue Show Angled Handles Plugin](https://github.com/mekkablue/ShowAngledHandles)
  * [mekkablue Show Component Order Plugin](https://github.com/mekkablue/ShowComponentOrder)
  * [mekkablue Show Italic Plugin](https://github.com/mekkablue/ShowItalic)
  * [mekkablue Show Tops And Bottoms Plugin](https://github.com/mekkablue/ShowTopsAndBottoms)
  * [mekkablue Show Coordinates Of Selected Nodes Plugin](https://github.com/mekkablue/ShowCoordinatesOfSelectedNodes)
  * [mekkablue Show Cross hair Plugin](https://github.com/mekkablue/ShowCrosshair)
  * [mekkablue Show Filled Preview Plugin](https://github.com/mekkablue/ShowFilledPreview)
  * [mekkablue Show Glyphs In Label Color Plugin](https://github.com/mekkablue/ShowGlyphsInLabelColor)
  * [mekkablue Show Handles Everywhere Plugin](https://github.com/mekkablue/ShowHandlesEverywhere)
  * [mekkablue Show Interpolations Plugin](https://github.com/mekkablue/ShowInterpolations)
  * [mekkablue Show Metrics Keys Plugin](https://github.com/mekkablue/ShowMetricsKeys)
  * [mekkablue Show Offset Curve Parameter Preview Plugin](https://github.com/mekkablue/ShowOffsetCurveParameterPreview)
  * [mekkablue Symmetry Plugin](https://github.com/mekkablue/Symmetry)
  * [mekkablue ShowExportStatus Plugin](https://github.com/mekkablue/ShowExportStatus)
* [Nevu Scripts](https://github.com/Nevu/Nevu_ScriptsForGlyphs)
  * [Nevu Show Global Glyph Plugin](https://github.com/Nevu/PluginsForGlyphs_Nevu/tree/master/Show-Global-Glyph)
* [schriftgestalt Autopsy Plugin](https://github.com/schriftgestalt/Autopsy-Plugin)
  * [schriftgestalt Expand Paths Preview Tool Plugin](https://github.com/schriftgestalt/Glyphs-Plugins)
  * [schriftgestalt Scripts](https://github.com/schriftgestalt/Glyphs-Scripts)
  * [schriftgestalt word-o-mat Plugin](https://github.com/schriftgestalt/word-o-mat)
*  [Tosche BubbleKern]( https://github.com/Tosche/BubbleKern)
  * [Tosche Scripts](https://github.com/Tosche/Glyphs-Scripts)
  * [Tosche Show Black Fill Plugin](https://github.com/Tosche/ShowBlackFill)
* [Simon Cozens's Script](https://github.com/simoncozens/GlyphsScripts)
  * [Simon Cozens's GlyphGit Plugin](https://github.com/simoncozens/GlyphsGit)
  * [Simon Cozens's ShowPathArea Plugin](https://github.com/simoncozens/GlyphsPlugins)
* [Huerta Tipografica's Scripts](https://github.com/huertatipografica/huertatipografica-scripts)
* [Wei Huang's Scripts](https://github.com/weiweihuanghuang/wei-glyphs-scripts)

If you feel that I have missed one repository, please write a issue in this repo.
Best,

Nicolás
