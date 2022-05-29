---
slug: neovim-geek
title: Neovim Geek
created: 2022-05-29 07:27:51 -0600
author: Opsaaaaa
---


# Neovim Geek

The idea of copying peoples configs is without understanding them annoys me.
So this is a little bit about useful neovim features.

- TODO: Read `:h options`.
- TODO: Look/brows thought `:tab h` and `:tab h nvim`.


## Conquer Of Completeion COC.nvim

Code completeion for nvim

- [coc.nvim](https://github.com/neoclide/coc.nvim)

- TODO: Give this propper attention and set it up with the langs I use most.
- TODO: Look at the other big completion plugin?

- [coc.nvim/wiki/Language-servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- [coc.nvim/wiki/Using-coc-extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)
- [coc.nvim/wiki/Using-the-configuration-file](https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file)



## System Clipboard

```vim
"clipboard
"requires `sudo apt install xclip` on linux
set clipboard+=unnamedplus
set clipboard+=unnamed
" Idk what v these v do.
set go+=a
set paste
```

## Spellchecking

- `:h spell` or `:vert h spell`
- [ruslan-savina/spelling](https://github.com/ruslan-savina/spelling)

Sadly the built in spellckecking in vim does not support CamelCasing.
I tried a handful of plugins before I found one that worked for me.
It could be the plugins expect a differnt plugin mangager or there is some config I am missing.

Didn't work with my settup:
- `kamykn/CCSpellCheck.vim`
- `shinglyu/vim-codespell`


The built in spelling might be good enough for you. you can find the documentation for the built in spelling with `h spell`.
or `vert h spell`. 
```vim
setlocal spell spelllang=en_us
```
And you can toggle it with `set spell!`.


I ended up going with the `ruslan-savina/spelling` plugin.
It requires the aspell package and maybe an apsell english dictionary.
On ubuntu both where already install for me. 
```vim
" on ubunut your fine 
Plug 'ruslan-savina/spelling'
"...
let g:spelling_file_types = ['py','md', ...]
let g:spelling_update_events = ['TextChanged', 'InsertLeave', 'BufRead']
"...
" I really should properly learn how to set keybindings in vim.
nnoremap <C-s> :SpellingToggle<cr>
nnoremap <C-w> :SpellingAddWord<cr>
```

Define spelling styles after setting colorscheme.
I only want it to display a little curl under the word instead of obnoxious highlighting.
I would probably be good to define the color for the undercurl as well.
Be my guest if you know how to do that.
```vim
hi SpellBad ctermbg=NONE ctermfg=NONE cterm=undercurl guifg=NONE
hi SpellCap ctermbg=NONE ctermfg=NONE cterm=undercurl guifg=NONE
hi SpellRare ctermbg=NONE ctermfg=NONE cterm=undercurl guifg=NONE
hi SpellLocal ctermbg=NONE ctermfg=NONE cterm=undercurl guifg=NONE
```


## Fuzzy Finder

- [cloudhead/neovim-fuzzy](https://github.com/cloudhead/neovim-fuzzy)

This is what makes neovim reasonable replacement for vscode. imo.

The readme for this plugin is not very verbose. 
I needed to run a `sudo apt install fzy ripgrep`

There was also a bug [issue/50](https://github.com/cloudhead/neovim-fuzzy/issues/50).
```vim
Plug 'cloudhead/neovim-fuzzy'
"...
" Bug workaround.
let g:fuzzy_rootcmds = [ 
	\ ["git", "rev-parse", "--show-toplevel"],
	\ ]
"...
" No idea what the <CR> is doing, I should really learn that.
nnoremap <C-p> :FuzzyOpen<CR>
```

## Color Schemes and stuff.

- [rafi/awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)

Preview Colors like #f201a0
and give me a selection of Colorschemes to pick form.

```vim
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
```

Use `:colorscheme iceberg` to try out different themes.
Some will might have other configuration.

```vim
" Idk what termguicolors does. 
set background=dark
set termguicolors

colorscheme iceberg
```

Also here btw here is a few colorschemes that don't suck
`scheakur, lucid, iceberg, molokai, gotham, jellybeans`.
Or ones I kinda like anyway.

If you want to override colors you can do that after setting the colorsheme. ie:
```vim
hi SpellBad ctermbg=NONE ctermfg=NONE cterm=undercurl guifg=NONE
```

`hi` is short for `highlight`. 
And I found testing the settings in the prompt to be useful.

Sometimes you can look at the source for a theme to get an idea of what you can do.
However some schemes use all sorts of custom garbage functions and stuff. 
Those make it confusing as heck.

come to think of it there is probably a help page for it. yup `:h highlight`.
Also idk if its a its a plugin doing it but `:hi` by itself on my system displays a long list of suggestions.

The gui colors accept normall hash colors like #fff or #aaaaaa.
The cterm colors take a 3 digit number. A 256 color code?

Anyway the cterm colors are much harder to edit on the fly.
If you're really into custom colors I would find some tool to help yourself out.


## Links

- [rafi/awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)
- [cloudhead/neovim-fuzzy](https://github.com/cloudhead/neovim-fuzzy)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [ruslan-savina/spelling](https://github.com/ruslan-savina/spelling)



- https://github.com/rafi/awesome-vim-colorschemes
- 
-
-



