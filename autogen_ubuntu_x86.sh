#! /bin/bash

function mkbd_install_dep {
   apt-get install autoconf
   apt-get install libfakekey-dev
   apt-get install pkg-config
}

function mkbd_gen {
   autoreconf -v --install 
   /configure --enable-cairo
}

[[ $# > 1 ]] && ${1}
