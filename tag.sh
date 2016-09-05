#!/bin/bash

mkdir -p ~/.vim;

ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q  -f ~/.vim/systags \
/usr/include/* \
/usr/include/netinet/* \
/usr/include/arpa/* \
#/usr/include/curl/* \
\
/usr/include/x86_64-linux-gnu/* \
/usr/include/x86_64-linux-gnu/sys/* \
/usr/include/x86_64-linux-gnu/gnu/* \
/usr/include/x86_64-linux-gnu/bits/* \
/usr/include/x86_64-linux-gnu/asm/* \

