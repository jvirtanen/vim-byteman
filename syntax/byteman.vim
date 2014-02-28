" Vim syntax file
" Language:    Byteman
" Maintainer:  Jussi Virtanen <jussi.k.virtanen@gmail.com>
" Last Change: 2014 Feb 28

if exists("b:current_syntax")
  finish
endif

" Syntax errors
syntax match bytemanCommentError /\v[^^]#.*$/

" Rules
syntax keyword bytemanKeyword RULE
syntax keyword bytemanKeyword CLASS
syntax keyword bytemanKeyword INTERFACE
syntax keyword bytemanKeyword METHOD
syntax keyword bytemanKeyword AT
syntax keyword bytemanKeyword AFTER
syntax keyword bytemanKeyword BIND
syntax keyword bytemanKeyword IF
syntax keyword bytemanKeyword DO
syntax keyword bytemanKeyword ENDRULE

" Helpers
syntax keyword bytemanKeyword HELPER

" Conditional operators
syntax keyword bytemanKeyword NOT
syntax keyword bytemanKeyword TRUE
syntax keyword bytemanKeyword AND OR
syntax keyword bytemanKeyword EQ NE
syntax keyword bytemanKeyword GE GT LE LT

" Arithmetic operators
syntax keyword bytemanKeyword DIVIDE MINUS MOD PLUS TIMES

" Location specifiers
syntax keyword bytemanKeyword ENTRY EXIT
syntax keyword bytemanKeyword READ WRITE
syntax keyword bytemanKeyword LINE
syntax keyword bytemanKeyword INVOKE
syntax keyword bytemanKeyword SYNCHRONIZE
syntax keyword bytemanKeyword THROW
syntax keyword bytemanKeyword ALL

" Comments
syntax match   bytemanComment /\v^#.*$/ contains=bytemanTodo
syntax keyword bytemanTodo    FIXME TODO XXX

" Variables
syntax match bytemanVariable /\v\$\w+/
syntax match bytemanVariable /\v\$[!^#*@]/

" Numbers
syntax match bytemanNumber /\v<\d+[lL]=>/
syntax match bytemanNumber /\v<0[xX]\x+[lL]=>/
syntax match bytemanNumber /\v<\d+[eE][-+]=\d+[fFdD]=>/
syntax match bytemanNumber /\v<\d+([eE][-+]=\d+)=[fFdD]>/

" Booleans
syntax keyword bytemanBoolean false true

" Strings
syntax region bytemanString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight link bytemanBoolean      Boolean
highlight link bytemanComment      Comment
highlight link bytemanCommentError bytemanError
highlight link bytemanError        Error
highlight link bytemanKeyword      Keyword
highlight link bytemanNumber       Number
highlight link bytemanString       String
highlight link bytemanTodo         Todo
highlight link bytemanVariable     Identifier

let b:current_syntax = "byteman"
