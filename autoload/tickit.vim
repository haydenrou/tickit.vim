let s:tickit_ticker = "x"
let s:tickit_location = $HOME . "/.config/tickit.vim/TODO.md"

function tickit#set_ticker(ticker, ...) abort
  let s:tickit_ticker = a:ticker
endfunction

function tickit#set_location(location, ...) abort
  let s:tickit_location = a:location
endfunction

function tickit#open_todo() abort
        if filereadable(s:tickit_location)
                execute ":e " . s:tickit_location
        else
                e templates/hero
                normal! gg
                normal! yG
                execute ":e " . s:tickit_location
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
        elseif search(join(['\[', s:tickit_ticker,'\]'], ''), 'ncpe', line('.')) == 1
                execute join([".,.s/\\[", s:tickit_ticker, "\\]/\\[ \\]"], '')
        endif
endfunction

function tickit#mark_done() abort
        normal! mt

        execute join([".,.s/\\[ \\]/\\[", s:tickit_ticker, "\\]"], '')

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
