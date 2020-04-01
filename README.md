yuki.cfg
========
high-fps competitive csgo config

yuki.cfg contains commands
userconfig.cfg contains binds

some commands are useless without the binds and viceversa, and some binds need to be changed in both yuki.cfg and userconfig.cfg if you are going to change them.

everything should be easily modifiable as it is well organized. "preference_commands" and "crosshair_commands" are likely what you would be most interested in checking out, together with binds of course.

added binds
========
https://i.imgur.com/xBZ0dsK.png (outdated, press F2 ingame for new list)

Installation
============
put launch commands into launchcommands, if you do not how to do this, ignore it.

put all the files except "c4.wav" here;

Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg

put "c4.wav" here;

Steam\steamapps\common\Counter-Strike Global Offensive\csgo\sound

when using config for first time be sure to write "exec yuki" in console. viewmodel settings might reset occasionally, fix this by execing yuki in console again (just write "ae" in console to refresh settings)

quickrcon.cfg, lollollol.cfg and quick.cfg are not needed, add them if you feel they'll be of use to you.

quick.cfg = training config

quickrcon.cfg = rcon version of quick (for non-local servers)

lollollol.cfg = become the MLG pro you always knew you were

dongle.cfg = let yourself become juan with your deagle

zeus.cfg = let lightning rain from above

Extras (Text Update)
============
This will update your text in game, mostly it makes things more easy to read, increases size and what not. This textfile contains some internal jokes in my friendgroup as well as modifying some text to be Swedish. I don't recommend using it unless you speak Swedish.

Put csgo_yuki.txt in your resource folder:
Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource

Add "-language yuki" to your launch options.

Extras (new menu background)
============
If you download the file "pf55menu.webm" you can change your menu background in counter-strike: global offensive. I recommend you make copies of the files you will replace in case you want to revert to the original menu appearance. In order to make this work you will need to replace files found here:

Steam\SteamApps\common\Counter-Strike Global Offensive\csgo\panorama\videos

With the .webm in question. Rename the "pf55menu.webm" to match the name of the webm used as your menu background. Easiest way to see which one you are supposed to replace is by starting CS:GO and checking what video plays in the background. Find the corresponding video in your folder and copy it to create a backup. Now delete the original and rename "pf55menu.webm" to its file name.


For example if the menu background is sirocco_night.webm you will rename pf55menu.webm as "sirocco.night.webm" and replace it. You might have to do this for the 540p or 720p version if those are being used.

Usage
============
Press "F2" to see all non-default binds listed in console.

Helpful Info
============
This config supports multiple viewmodel settings and multiple crosshairs. If you use crosshair or viewmodel to line up grenades you can edit the toggles to have both your normal crosshair+viewmodel as well as a viewmodel/crosshair you use to line up your grenades.

The crosshair supports different color for different crosshairs without breaking the nadecolor-binds.

Thanks
============
Ideas/inspiration/co-operation


Maddada

TheElderNigs

KeGaMo
