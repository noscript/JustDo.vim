JustDo.vim
=========

Better versions of `:bufdo`, `:tabdo` and `:windo`

Features:
* No `E21: Cannot make changes, 'modifiable' is off` for `:BufDo`.
* Preserves current buffer, window and tab.

### Examples

```vim
:BufDo echo bufname("%")
:BufDo %s/old/new/g
:TabDo NERDTreeClose | cclose
:TabDo WinDo diffoff

```

