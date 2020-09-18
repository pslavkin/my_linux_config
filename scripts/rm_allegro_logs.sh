find -path "./layout/*" -iname "*.log*"        -delete
find -path "./layout/*" -iname "*,1"          -delete
find -path "./layout/*" -iname "*,2"          -delete
find -path "./layout/*" -iname "*devices.dml" -delete
find -path "./layout/*" -iname "*.jrl*"       -delete
find -path "./layout/*" -iname "*.tag*"       -delete
find -path "./layout/*" -iname "*.txt*"       -delete
find -path "./layout/*" -iname "*.did*"       -delete
find -path "./layout/*" -iname "*.dmp*"       -delete
find -path "./layout/*" -iname "*.lck*"       -delete
find -path "./layout/*" -iname "*.SAV*"       -delete
find -path "./layout/*" -iname "*.rpt*"       -delete
find -path "./layout/*" -iname "*AUTOSAVE*"   -delete
find -path "./design/*" -iname "*devices.dml" -delete
find -path "./design/*" -iname "*.DBK*"       -delete
find -path "./design/*" -iname "*.DSNlck*"    -delete
rm ./layout/stepFacetFiles4Map -r
rm ./layout/signoise.run -r
rm ./design/signoise.run -r
rm ./design/allegro -r
echo "Hey! Wana rm .art's and pdf's? y/[n]"
read A
if [[ "$A" == 'y' ]]; then 
		find -path "./layout/*" -iname "*.art*"  -delete
		find -path "./layout/*" -iname "*.drl*"  -delete
		find -path "./layout/*" -iname "*.pdf*"  -delete
		find -path "./layout/*" -iname "*.rou*"  -delete
	else 	
		exit 0;
fi



