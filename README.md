JustDo.vim
=========

Better versions of `:bufdo` and `:tabdo`.

Features:
* No `E21: Cannot make changes, 'modifiable' is off` for `:BufDo`.
* Preserves current buffer and tab.

### Examples

```vim
:BufDo echo bufname("%")
:BufDo %s/old/new/g
:TabDo NERDTreeClose | cclose
```

### Roadmap

Adding ```WinDo```.
