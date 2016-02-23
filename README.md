# Emacs configuration

tested on
GNU Emacs 24.4.1 (x86_64-unknown-linux-gnu, GTK+ Version 3.10.8)

Note, the `magit` v2.x package supplied by el-get is only compatible with Emacs versions = 24.4 (i.e. not Emacs 24.3!).  See [el-get issue thread](https://github.com/dimitri/el-get/issues/2279).


## Emacs plugins

The plugins listed below are installed by el-get and specified in `.emacs.d/settings/el-get-settings.el`

- auctex -- LaTeX support
- auto-complete -- auto-completion
- elpy -- Python IDE-like environment for emacs
- ein -- IPython notebook support
- magit -- git support
- helm -- [completion and selection narrowing](https://github.com/emacs-helm/helm) framework
- helm-descbinds -- describe keybindings using helm
- markdown-mode -- markdown support
- flycheck -- realtime syntax checking


## Errors

### Trouble building AUCTeX

If you get an error that contains:
`Error (el-get): while installing auctex: el-get: ./autogen.sh el-get could not build auctex [./autoge\
n.sh]`

make sure you have `automake` and `texlive-full` installed (on Ubuntu).

### Elpy dependencies

Elpy is dependent on the python packages:
`jedi, flake8, importmagic, autopep8, yapf`

The latter three are not available through the standard anaconda
repository via `conda install <package>`, but can be installed through `pip`.

At the moment, this set up does not enable the Elpy functionalities
that rely upon those three packages.

### flycheck warnings

You may see warnings when flycheck is enabled:
```
Warning: Unknown defun property `interactive-only' in flycheck-disable-checker
Warning: Unknown defun property `interactive-only' in flycheck-set-checker-executable
```

To [make the warnings go away](https://github.com/flycheck/flycheck/issues/604) byte-compile
`flycheck.el`, e.g. `M-x byte-compile-file RET [file to byte-compile]`

In this particular setup, you would launch emacs and type 
`M-x byte-compile-file RET ~/.emacs.d/el-get/flycheck/flycheck.el`

### problem launching `ein:notebooklist-open` - `cl-generic` kluge

`cl-generic` appears to be an undeclared
[dependency for the `ein` package](https://github.com/syl20bnr/spacemacs/issues/4663),
so trying to interact with IPython notebook by typing `M-x
ein:notebooklist-open` inside emacs gives an error to the effect of
`"Cannot open load file" "no such file or directory" "cl-generic"`.  

I included a manual installation of `cl-generic` in
`el-get-settings.el`.  However, I still had to navigate to
`~\.emacs.d\el-get\cl-generic` and manually rename `cl-generic-0.2.*`
to `cl-generic.*` to get around the error.


## Credit

Structured after Jessica Hamrick's old [emacs configuration](https://github.com/jhamrick/emacs)









