echo "WARNING: the packages: lolcat (rbgem) are required to run"
clear
echo "Starting rainbows!" | lolcat -a --duration=36
clear
echo "Begin File creation" | lolcat -a --duration=90
mkdir lulos
echo "> Cores" | lolcat
cat installfiles/lulzOS.ifi > lulzOS.rb
echo "-> lulzOS.rb" | lolcat
cat installfiles/MainFiles.zpfi > MainFiles.zip
echo "> Main Files" | lolcat
cat installfiles/Core.zpfi > Core.zip
echo "> lulzCore" | lolcat
echo "Extracting..." | lolcat -a
unzip Core.zip
unzip MainFiles.zip
mv core lulos/core
mv main lulos/main
echo "Starting LulSHELL..." | lolcat -a --duration=45
cd lulos/core
begin.sh