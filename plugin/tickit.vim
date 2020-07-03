call tickit#set_ticker("x")
call tickit#set_location($HOME . "/.config/tickit.vim/TODO.md")

nmap <Leader>otd :call tickit#open_todo()<CR>
nmap <Leader>td :call tickit#toggle_todo()<CR>
nmap <Leader>ntd :call tickit#add_todo()<CR>

