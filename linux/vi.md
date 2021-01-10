# VIM


## quiting 

* `:x` - exit, saving changes 
* `:wq` - exit, saving changes 
* `:q` - exit, if no changes 
* `:q!` - exit, ignore changes 

## inserting text
* `i` - insert before cursor 
* `I` - insert before line
* `a` - append after cursor 
* `A` - append after line 
* `o` - open new line after current line 
* `O` - open new line before current line 
* `r` - replace one character 
* `R` - replace many characters

## motion 
* `h` - move left
* `j` - move down 
* `k` - move up 
* `l` - move right 
* `w` - move to next word 
* `W` - move to next blank delimited word 
* `b` - move to beginning of the word 
* `B` - move to beginning of blank delimited word 
* `e` - move to end of word 
* `E` - move to end of blang delimited word 
* `(` - move a sentence back 
* `)` - move a senteince forward 
* `{` - move paragraph back 
* `}` - move paragraph forward
* `0` - move to beginning of line 
* `^` - go to the beginning of the line
* `$` - move to end of line 
* `nG` - move to nth line of file 
* `:n` - move to nth line of file 
* `G` - move to last line of file 
* `fc` - move forward to 'c' 
* `Fc` - move backward to 'c' 
* `H` - move to top of the screen 
* `M` - move to middle of the screen 
* `L` - move to bottom of the screen 
* `%` - move to associated (), {}, []

## deleting text 
* `x` - delete character to the right 
* `X` - delete character to the left
* `D` - delete to the end of file 
* `dd` - delete current line 
* `:d` - delete current line 

## searching
* `/string` - search forward for string
* `?string` - search backward for string 
* `n` - search for next instance of string 
* `N` - search for previous instance of string 

## replace 
* `:s/pattern/string/flags` - replace pattern with string, according to flags 
* `g` - flag, replaces all occurences 
* `c` - flag, confirm replaces 
* `&` - repeat last :s command 

## files 
* `:w` file - write to file 
* `:r` file - read file in after line 
* `:n` - go to next file 
* `:p` - go to previous file 
* `:e file` - edit file 
* `!!cmd` - replace line with output of cmd 

## other 
* `u` - undo last change 
* `U` - undo all changes to line



## copying and pasting
* `yy` – yank (copy) the current line
* `y<position>` - yank the <position>
* `p` – paste the most recent deleted or yanked text


## searching
`/<pattern>` - start a forward search (n – next match, N – previous match)
`?<pattern>` - start a reverse search

* `:n` – positions the cursor at line n
* `:$` - positions the cursor on the last line
* `:set nu` – turn on the line numbering
* `:set nonu` – turn off the line numbering 
* `:help [subcommand]` – get help

# repeat commands: 
`5k` - move up a line 5 times
`80i<Text><Esc>` - insert <Text> 80 times
`80i_<Esc>` - insert 80 "_" characters
