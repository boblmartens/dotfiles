syntax on 							" enable syntax hilighting
filetype on 						" automatically detect file type
set nocompatible    		" We don't want vi compatibility.
set background=light		" setting which colorscheme for solarized that I want
colorscheme solarized		" which colorscheme

set nu 									" turn on line numbers
set ts=2 								" tabs are 2 spaces
set bs=2 								" backspace over everything in insert mode
set shiftwidth=2				" tabs under smart indent
set autoindent 					" autoindent on
set showmatch       		" Show matching brackets.

call pathogen#infect()
