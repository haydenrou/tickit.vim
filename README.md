<div align="center">
  <h1>tickit.vim</h1>
  <strong>lightweight TODO management</strong>
</div>

<br>

![tickit.vim example](https://github.com/haydenrou/tickit.vim/blob/master/screenshots/tickitvim.png?raw=true)

<br>

## Installation
If you use [vim-plug](https://github.com/junegunn/vim-plug), you can add tickit.vim to your `init.vim` with the below line, and run `:PlugInstall` to get up and running.
```
Plug 'haydenrou/tickit.vim'
```

## Usage
tickit.vim uses `$HOME/.config/tickit.vim/TODO.md` as a TODO file. If you want to change it, you can do so as per the below:
```
let g:tickit_location = $HOME . "/my_location/myfile.md"
```
You can also customise the "ticker". The default is "x"
```
let g:tickit_ticker = ":)"
```

- Open your TODO.md file
    ```
    <Leader>otd
    ```
- Create a new todo
    ```
    <Leader>ntd
    ```
- Toggle todo
    ```
    <Leader>td
    ```

## Notes
Please feel free to open up issues with bug reports or feature suggestions as you see fit.

I encourage contributions or suggestions, and if you have anything else you want to work on together you can contact me by email: <hayden@rouille.dev>.

