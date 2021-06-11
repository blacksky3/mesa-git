#!/usr/bin/bash

#_                   _ _ _  _ _____ _  _
#| | _______   ____ _| | | || |___  | || |
#| |/ / _ \ \ / / _` | | | || |_ / /| || |_
#|   <  __/\ V / (_| | | |__   _/ / |__   _|
#|_|\_\___| \_/ \__,_|_|_|  |_|/_/     |_|


cd mesa-git && env _compiler=2 makepkg -si --noconfirm && cd ..

cd lib32-mesa-git && env _compiler=2 makepkg -si --noconfirm && cd ..

# make a copy of every pkg in package-$(date -I)/ dir

mkdir -p package-$(date -I)

cp -v */*.pkg.tar.zst package-$(date -I)/

# clean build dir

rm -rf */src/
rm -rf */pkg/
