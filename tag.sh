#!/usr/bin/env bash

mkdir -p ~/.vim;

#install "Universal Ctags" first
ctags -R -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ \
--file-scope=yes --langmap=c:+.h --languages=c,c++ \
--links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extras=+q \
-f ~/.vim/systags \
/usr/include/c++/5 \
~/codes/Open3D \

