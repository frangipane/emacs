# Emacs configuration

tested on
GNU Emacs 24.4.1 (x86_64-unknown-linux-gnu, GTK+ Version 3.10.8)

Note, the `magit` v2.x package supplied by el-get is only compatible with Emacs versions = 24.4 (i.e. not Emacs 24.3!).  See [el-get issue thread](https://github.com/dimitri/el-get/issues/2279).

## Trouble building AUCTeX

If you get an error that contains:
`Error (el-get): while installing auctex: el-get: ./autogen.sh el-get could not build auctex [./autoge\
n.sh]`

make sure you have `automake` and `texlive-full` installed (on Ubuntu).

