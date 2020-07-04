<div align="center">
  <h1>tickit.vim</h1>
  <strong>lightweight TODO management</strong>
</div>

<br>

![tickit.vim example](https://github.com/haydenrou/tickit.vim/blob/master/screenshots/tickitvim.png?raw=true)

<br>

## Installation
If you use [vim-plug](https://github.com/junegunn/vim-plug), you can add tickit.vim to your `init.vim` with the below line, and run `:PlugInstall` to get up and running.
```vim
Plug 'haydenrou/tickit.vim'
```

## Usage
tickit.vim uses `$HOME/.config/tickit.vim/TODO.md` as a TODO file. If you want to change it, you can do so as per the below:
```vim
call tickit#set_location($HOME . "/.config/tickit.vim/TODO.md")
```
You can also customise the "ticker". The default is "x"
```vim
call tickit#set_ticker(":)")
```
If you do not want the date to show in the done column, set the below
```vim
call tickit#show_date("false")
```

- Open your TODO.md file
    ```vim
    <Leader>otd
    ```
- Create a new todo
    ```vim
    <Leader>ntd
    ```
- Toggle todo
    ```vim
    <Leader>td
    ```

## Notes
Please feel free to open up issues with bug reports or feature suggestions as you see fit.

I encourage contributions or suggestions, and if you have anything else you want to work on together you can contact me by email: <hayden@rouille.dev>.

