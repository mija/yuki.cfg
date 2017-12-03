added binds
========
https://i.imgur.com/ccRbXRi.png


yuki.cfg
========
high-fps competitive csgo config

yuki.cfg contains commands
userconfig.cfg contains binds

some commands are useless without the binds and viceversa, and some binds need to be changed in both yuki.cfg and userconfig.cfg if you are going to change them.

everything should be easily modifiable as it is well organized. "preference_commands" and "crosshair_commands" are likely what you would be most interested in checking out, together with binds of course.

Installation
============
put launch commands into launchcommands, if you do not how to do this, ignore it.

put the files here (all except radiopanel.txt);

Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg

if you want to use radiopanel.txt (its really not a necessity, and is mostly tailored for dd2 pubheroes) then you'll put it here:

Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\ui

when using config for first time be sure to write "exec yuki" in console. viewmodel settings might reset occasionally, fix this by execing yuki in console again.

quickrcon.cfg, lollollol.cfg and quick.cfg are not needed, add them if you feel they'll be of use to you.

quick.cfg = training config

quickrcon.cfg = rcon version of quick (for non-local servers)

lollollol.cfg = become the MLG pro you always knew you were

Extras (Text Update)
============
This will update your text in game, mostly it makes things more easy to read, increases size and what not - it will modify your csgo_english.txt, save a backup if you want to go back to the old one. It will also reset on EVERY UPDATE.

Put aTextUpdate.vbs in your resource folder:
Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource

Run aTextUpdate.vbs
It will update your text file, you're now done. You'll need to re-run it after every update to cs, as it resets on each and every update.

Usage
============
Press "F2" to see all non-default binds listed in console.

Helpful Info
============
This config supports multiple viewmodel settings and multiple crosshairs. If you use crosshair or viewmodel to line up grenades you can edit the toggles to have both your normal crosshair+viewmodel as well as a viewmodel/crosshair you use to line up your grenades.

The crosshair supports different color for different crosshairs without breaking the nadecolor-binds.
