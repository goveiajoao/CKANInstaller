all: ckan icon 

ckan:
	gh release download -p "ckan.exe" -R KSP-CKAN/CKAN --clobber

icon:
	sudo mkdir -p /usr/share/icons/ckan
	sudo cp -f ./assets/ckan-256.png /usr/share/icons/ckan

install: all
	sudo mkdir -p /usr/local/share/ckan
	sudo mv -f ckan.exe /usr/local/share/ckan
	sudo cp -f ./build/ckan /usr/local/bin
	sudo cp -f ./build/ckan.desktop /usr/share/applications
	sudo chmod 755 /usr/local/bin/ckan

uninstall:
	sudo rm -rf /usr/local/share/ckan/ /usr/share/icons/ckan/
	sudo rm -f 	/usr/local/bin/ckan\
				/usr/share/applications/ckan.desktop
