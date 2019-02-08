" File: JustDo.vim
" Author: Sergey Vlasov <sergey@vlasov.me>
" Last Change: 2019-02-08
" Version: 0.3

function! BufDo(command)
    let currBuf = bufnr("%")

    let bufs = filter(range(1, bufnr('$')),
        \ 'empty(getbufvar(v:val, "&bt")) &&' .
        \ 'getbufvar(v:val, "&bl")')
    for buf in bufs
        exe 'buffer' buf
        exe a:command
        update
    endfo

    exe 'buffer ' . currBuf
endfun
command! -nargs=+ -complete=command BufDo call BufDo(<q-args>)

function! TabDo(command)
    let currTab = tabpagenr()

    for i in range(tabpagenr('$'))
        let tab = i + 1
        exe 'norm! ' . tab . 'gt'
        exe a:command
    endfor

    exe 'norm! ' . currTab . 'gt'
endfun
command! -nargs=+ -complete=command TabDo call TabDo(<q-args>)

function! WinDo(command)
    let currWin = winnr()

    for i in range(winnr('$'))
        let win = i + 1
        call win_gotoid(win_getid(win))
        exe a:command
    endfor

    call win_gotoid(win_getid(currWin))
endfun
command! -nargs=+ -complete=command WinDo call WinDo(<q-args>)
