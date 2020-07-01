let g:tickit_ticker = "x"
let g:tickit_location = $HOME . "/.config/tickit.vim/TODO.md"

function tickit#open_todo() abort
        if filereadable(g:tickit_location)
                execute ":e " . g:tickit_location
        else
                e templates/hero
                normal! gg
                normal! yG
                execute ":e " . g:tickit_location
                normal! P
                normal! G
        endif
endfunction

function tickit#add_todo() abort
        execute "normal! o"

        let new_todo = "[ ] - "

        execute "normal! i" . new_todo
        execute "call feedkeys('A')"
endfunction

function tickit#toggle_todo() abort
        normal! kmm^j

        if search('\[ \]', 'ncpe', line('.')) == 1
                :call tickit#mark_done()
        elseif search(join(['\[', g:tickit_ticker,'\]'], ''), 'ncpe', line('.')) == 1
                execute join([".,.s/\\[", g:tickit_ticker, "\\]/\\[ \\]"], '')
        endif
endfunction

function tickit#mark_done() abort
        normal! mt

        execute join([".,.s/\\[ \\]/\\[", g:tickit_ticker, "\\]"], '')

        if search('^# Done', 'ncpe') != 1
                execute "normal! Go" . "\n# Done"
                normal! `t
        endif

        normal! dd
        normal! /# Done
        /# Done
        normal! p

        normal! `m
endfunction

nmap <Leader>otd :call tickit#open_todo()<CR>
nmap <Leader>td :call tickit#toggle_todo()<CR>
nmap <Leader>ntd :call tickit#add_todo()<CR>

