let s:tickit_ticker = "x"

function tickit#open_todo() abort
        e TODO.md
endfunction

function tickit#add_todo() abort
        if expand('%:t') != 'TODO.md'
                e TODO.md
        endif

        execute "normal! o"

        let new_todo = "[ ] - "

        execute "normal! i" . new_todo
        execute "call feedkeys('A')"
endfunction

function tickit#check_todo() abort
        normal! mm^

        if search('\[ \]', 'ncpe', line('.')) == 1
                execute join([".,.s/\\[ \\]/\\[", s:tickit_ticker, "\\]"], '')
        elseif search(join(['\[', s:tickit_ticker,'\]'], ''), 'ncpe', line('.')) == 1
                execute join([".,.s/\\[", s:tickit_ticker, "\\]/\\[ \\]"], '')
        endif

        normal! `m
endfunction

nmap <Leader>otd :call tickit#open_todo()<CR>
nmap <Leader>td :call tickit#check_todo()<CR>
nmap <Leader>ntd :call tickit#add_todo()<CR>

