# GlyphsApp-Package-Install
Bash shell to install most of the Scripts and Plugins of Glyphs App

This shell batch create a clone of most of the repositories of Glyphs's Plugins and scripts host in GitHub.

Additionaly this scritp create a **sync_git_repos** in `/private/etc/cron.d/` that keep up-to-date the local repositories, doing `fetch` each 5 minutes.

# Install Notes:
1. Download `GlyphsScriptsConfi.sh` from this repository
2. Open Terminal:
3. Go to the same folder where have been downloaded `GlyphsScriptsConfi.sh`. e.g. If  `GlyphsScriptsConfi.sh` was downloaded in the **Downloads** folder, then type in the terminal:  
   ```
   cd ~/Downloads/
   ```
4. Run the `GlyphsScriptsConfi.sh` calling the sh enviroment. eg. Type in the terminal window:
   ```
   sh GlyphsScriptsConfi.sh
   ```
5. At the begining of the installation you will be asked for the user password. Type the password in order to have privilegies to write `/private/etc/cron.d/sync_git_repos`
6. Forget to keep updating the repositories, but if you want to be able to update them, so run `GlyphsScripts_updater.sh` as it was mentioned with other shell scripts, type in the terminal:  
   ```
   sh GlyphsScripts_updater.sh
   ```
And you will have updated all repositories.

###Repertoire of Plugins and Scripts:

* [BelaFrank String Smash Scripts](https://github.com/BelaFrank/StringSmash)
* [DeutschMark Glyphsapp Plugins](https://github.com/DeutschMark/Glyphsapp-Plugins)
  * [DeutschMark Glyphsapp Scripts](https://github.com/DeutschMark/Glyphsapp-Scripts)
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
  * [mekkablue Noodler Plugin](https://github.com/mekkablue/Noodler)
  * [mekkablue Show Angled Handles Plugin](https://github.com/mekkablue/ShowAngledHandles)
  * [mekkablue Show Component Order Plugin](https://github.com/mekkablue/ShowComponentOrder)
  * [mekkablue Show Coordinates Of Selected Nodes Plugin](https://github.com/mekkablue/ShowCoordinatesOfSelectedNodes)
  * [mekkablue Show Cross hair Plugin](https://github.com/mekkablue/ShowCrosshair)
  * [mekkablue Show Filled Preview Plugin](https://github.com/mekkablue/ShowFilledPreview)
  * [mekkablue Show Glyphs In Label Color Plugin](https://github.com/mekkablue/ShowGlyphsInLabelColor)
  * [mekkablue Show Handles Everywhere Plugin](https://github.com/mekkablue/ShowHandlesEverywhere)
  * [mekkablue Show Interpolations Plugin](https://github.com/mekkablue/ShowInterpolations)
  * [mekkablue Show Metrics Keys Plugin](https://github.com/mekkablue/ShowMetricsKeys)
  * [mekkablue Show Offset Curve Parameter Preview Plugin](https://github.com/mekkablue/ShowOffsetCurveParameterPreview)
* [schriftgestalt Autopsy Plugin](https://github.com/schriftgestalt/Autopsy-Plugin)
  * [schriftgestalt  Expand Paths Preview Tool Plugin](https://github.com/schriftgestalt/Glyphs-Plugins)
  * [schriftgestalt Scripts](https://github.com/schriftgestalt/Glyphs-Scripts)
  * [schriftgestalt word-o-mat Plugin](https://github.com/schriftgestalt/word-o-mat)
*  [Tosche BubbleKern]( https://github.com/Tosche/BubbleKern)
  * [Tosche Scripts](https://github.com/Tosche/Glyphs-Scripts)
  * [Tosche Show Black Fill Plugin](https://github.com/Tosche/ShowBlackFill)

If you feel that I have missed one repository, please write a issue in this repo.
Best,

Nicolás
