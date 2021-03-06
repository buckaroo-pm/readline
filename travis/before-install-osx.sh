#!/bin/bash

brew outdated "pkg-config" || brew upgrade "pkg-config"

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/Cellar/pkg-config
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/local/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/ncurses/lib/pkgconfig

c++ --version
g++ --version
gcc --version

mkdir -p bin

wget -N https://github.com/njlr/buck-warp/releases/download/v0.2.0/buck-2019.01.10.01-osx -O bin/buck
chmod +x ./bin/buck
./bin/buck --version

wget -N https://github.com/LoopPerfect/buckaroo/releases/download/$BUCKAROO_VERSION/buckaroo-macos -O bin/buckaroo
chmod +x ./bin/buckaroo
./bin/buckaroo version
