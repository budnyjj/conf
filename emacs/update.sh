#!/bin/bash

DST_DIR=`pwd`

# copy configuration files
mkdir -p $DST_DIR/.emacs.d/conf
cp ~/.emacs $DST_DIR/.emacs
cp ~/.emacs.d/conf/*.el $DST_DIR/.emacs.d/conf

# copy themes
mkdir -p $DST_DIR/.emacs.d/themes
cp ~/.emacs.d/themes/*.el $DST_DIR/.emacs.d/themes

# copy packages
mkdir -p $DST_DIR/.emacs.d/packages/el-get
rsync -av ~/.emacs.d/packages/el-get $DST_DIR/.emacs.d/packages --exclude */.git

# copy utils
mkdir -p $DST_DIR/.emacs.d/utils
rsync -av ~/.emacs.d/utils $DST_DIR/.emacs.d --exclude */.git
