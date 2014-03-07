@echo off
echo "Getting new version..."
C:\"Program Files (x86)"\Git\bin\git pull
echo "Copying files..."
copy userconfig.cfg ..\csgo\cfg
echo "Slam"
copy yuki.cfg ..\csgo\cfg
echo "Bam"
copy autoexec.cfg ..\csgo\cfg
echo "Done!"