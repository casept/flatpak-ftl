all:
	rm -rf FTL 
	flatpak-builder --repo=repo --ccache FTL com.subsetgames.FTL.json 
	flatpak build-bundle repo FTL-1.5.13.flatpak com.subsetgames.FTL
clean:
	rm -rf build repo FTL *.flatpak .flatpak-builder
install:
	flatpak install --user --bundle FTL-1.5.13.flatpak
uninstall:
	flatpak uninstall --user com.subsetgames.FTL
