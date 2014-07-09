function! BufDo(command)
	let currId = bufnr("%")

	let ids = filter(range(1, bufnr('$')),
		\ 'empty(getbufvar(v:val, "&bt")) &&' .
		\ 'getbufvar(v:val, "&bl")')
	for id in ids
		exe 'buffer' id
		exe a:command
		update
	endfo

	exe 'buffer ' . currId
endfun
command! -nargs=+ BufDo call BufDo(<q-args>)
