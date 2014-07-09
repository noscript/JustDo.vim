JustDo.vim
=========

```E21: Cannot make changes, 'modifiable' is off``` is annoying. That's why there is now ```BufDo``` to skip non-modifiable buffers.

### Examples

```vim
:BufDo echo bufname("%")
:BufDo %s/old/new/g
```

### Roadmap

Adding ```WinDo``` and ```TabDo```.
