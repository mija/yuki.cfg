BuT yUkI tHe CuRsOR dOnT wORK???!
========
Press X after games to get your cursor up, or hold down shift and press Z.
Since "radio1" is technically not binded anywhere (its stored inside aliases) the game does not know what to display as info text to show cursor.
During games Z should still work fine (on scoreboard + on spraymenu)

1080p/1440p crosshair versions
========
There is now 1440p versions of crosshairs enabled by default. You might like these even if you play at 1080p but they may also appear too small.
You can easily swap these to 1080p versions by scrolling down in yuki.cfg to the part below "//aim_toggle"
Here you will see two versions of each crosshair, one has two // in front of the name, those are 1080p alternatives. To swap to those crosshairs (should be slightly larger) just move the // to the other one.

Example:

alias ch1 "cl_crosshairstyle 5;cl_crosshairdot 0;cl_crosshairgap -1;cl_crosshairsize 2.5;cl_crosshair_drawoutline 0;cl_crosshair_outlinethickness 0;cl_crosshairthickness 0.8;cl_crosshairalpha 255;cl_crosshair_t 1"
//alias ch1 "cl_crosshairstyle 5;cl_crosshairdot 0;cl_crosshairgap -1;cl_crosshairsize 3.5;cl_crosshair_drawoutline 0;cl_crosshair_outlinethickness 0;cl_crosshairthickness 0.8;cl_crosshairalpha 255;cl_crosshair_t 1"

Move the // to the above one like so:

//alias ch1 "cl_crosshairstyle 5;cl_crosshairdot 0;cl_crosshairgap -1;cl_crosshairsize 2.5;cl_crosshair_drawoutline 0;cl_crosshair_outlinethickness 0;cl_crosshairthickness 0.8;cl_crosshairalpha 255;cl_crosshair_t 1"
alias ch1 "cl_crosshairstyle 5;cl_crosshairdot 0;cl_crosshairgap -1;cl_crosshairsize 3.5;cl_crosshair_drawoutline 0;cl_crosshair_outlinethickness 0;cl_crosshairthickness 0.8;cl_crosshairalpha 255;cl_crosshair_t 1"

Update notes
========
Latest update added the new player ping on ALT+E. It also added the new radial radio menus on C (use scrollwheel to change between them) as well as changing X key to cycle through all old radio panels. Z now functions as a "good half" bind. ALT+. (dot) is a new trashtalk bind.
GLHF, GH, GG and trashtalk bind is now somewhat more "random" in which phrase is used by having the order change whenever you buy a grenade, this should make it feel less repetitive and not having the same "glhf!" appear on your first game of a session.

yuki.cfg
========
high-fps competitive csgo config

autoexec.cfg is used to "load" the config
yuki.cfg contains commands
userconfig.cfg contains binds
keyhelp.cfg contains a keymap over buybinds

some commands are useless without the binds and viceversa, and some binds need to be changed in both yuki.cfg and userconfig.cfg if you are going to change them.

you might want to make changes to "preference_commands" at the top of yuki.cfg. further tinkering with the config beyond this likely requires some basic understanding of how source-engine configs work/look like. feel free to ask me if you need any changes made.

added binds
========
![Image of Non-Default Binds](/images/binds.png) 

(probably outdated, press F2 ingame for new list)

![Image of Buybinds](/images/buybinds.png)

Installation
============
Some of the files may be in the "extra stuff" folder. Check there if you cant find something.



put launch commands into launchcommands, if you do not how to do this, ignore it.

put all the files except "c4.wav" here;

Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg

put "c4.wav" here;

Steam\steamapps\common\Counter-Strike Global Offensive\csgo\sound

when using config for first time be sure to write "exec yuki" in console. if any weirdness happens just write "ae" in console and it will reload the config which should fix it. VERY rarely you might be stuck in an attack animation, hold ALT and press P to fix. (mega rare)

quickrcon.cfg, lollollol.cfg, quick.cfg, dongle.cfg and zeus.cfg are not needed, add them if you feel they'll be of use to you.

quick.cfg = training config

quickrcon.cfg = rcon version of quick (for non-local servers)

lollollol.cfg = become the MLG pro you always knew you were

dongle.cfg = let yourself become juan with your deagle

zeus.cfg = let lightning rain from above

keyhelp.cfg - contains an ascii-image keymap for buybinds. strongly recommend you to download this to learn the buybinds.

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
Press "PAGE DOWN" to see map over buybinds in console.

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
