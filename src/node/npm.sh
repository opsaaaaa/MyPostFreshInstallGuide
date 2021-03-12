#!/usr/bin/env bash

SOURCE_="example.com"

./meta/installingHeader $SOURCE_ ${0##*/}

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

nvm install --lts


echo "restart terminal and check rc files"
