# Emacs configuration

tested on
GNU Emacs 24.4.1 (x86_64-unknown-linux-gnu, GTK+ Version 3.10.8)

Note, the `magit` v2.x package supplied by el-get is only compatible with Emacs versions = 24.4 (i.e. not Emacs 24.3!).  See [el-get issue thread](https://github.com/dimitri/el-get/issues/2279).


## Emacs plugins

The plugins listed below are installed by el-get and specified in `.emacs.d/settings/el-get-settings.el`

- auctex -- LaTeX support
- auto-complete -- auto-completion
- ein -- IPython notebook support
- magit -- git support
- jedi -- general Python support
- helm -- [completion and selection narrowing](https://github.com/emacs-helm/helm) framework
- helm-descbinds -- describe keybindings using helm
- markdown-mode -- markdown support
- pydoc-info -- Python documentation


## Errors

### Trouble building AUCTeX

If you get an error that contains:
`Error (el-get): while installing auctex: el-get: ./autogen.sh el-get could not build auctex [./autoge\
n.sh]`

make sure you have `automake` and `texlive-full` installed (on Ubuntu).

### pydoc-info plug-in

The installation (by el-get) of the `pydoc-info` plug-in requires
mercurial, i.e. `hg` to be installed.  Otherwise, you'll see an error like

`Error (el-get): while installing pydoc-info: The command named 'hg'
can not be found with 'executable-find'`



## Credit

Based on Jessica Hamrick's [emacs configuration](https://github.com/jhamrick/emacs)









