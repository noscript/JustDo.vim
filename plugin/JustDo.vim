" File: JustDo.vim
" Author: Sergey Vlasov <sergey@vlasov.me>
" Last Change: 2017-02-14
" Version: 0.2

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
