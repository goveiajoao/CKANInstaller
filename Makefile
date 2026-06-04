all: ckan icon 

ckan:
	gh release download -p "ckan.exe" -R KSP-CKAN/CKAN -D ./build/ --clobber

icon:
	sudo mkdir -p /usr/share/icons/ckan
	sudo cp -f ./assets/ckan-256.png /usr/share/icons/ckan

install: all
	echo "Installed"
