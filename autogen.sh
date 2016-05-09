#!/bin/sh -x

rm -fv ltmain.sh config.sub config.guess config.h.in
mkdir -p m4
aclocal -I m4
autoheader
libtoolize --automake --copy
automake --add-missing --copy --force
autoreconf
chmod 755 configure
