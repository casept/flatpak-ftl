# flatpak-ftl     

A flatpak package for the game FTL - Faster Than Light. Requires game tarball.     

## Building     
First checkout the repo:       
```
git clone https://github.com/casept/flatpak-ftl     
cd flatpak-ftl   
git submodule init     
git submodule update     
```

Install the needed runtime and SDK:        
```
flatpak remote-add --user --if-not-exists --from gnome https://sdk.gnome.org/gnome.flatpakrepo       
flatpak install --user gnome org.freedesktop.Sdk 1.4      
flatpak install --user gnome org.freedesktop.Platform 1.4          
```
Place an archive of version 1.5.13 of the game into the directory.     
Then run `make`. This will create a `.flatpak` file in the directory, which contains the game.     

## Installation      
Just run `make install`. This will install the game for your local user.     

## Running        
A desktop entry for the game should have been added. If it hasn't, log out and back in. If it still doesn't work, run `flatpak run com.subsetgames.FTL` to launch the game.     

## TODO      
* Use our own open source libs instead of the ones bundled w/ the game
