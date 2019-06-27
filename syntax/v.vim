if exists('b:current_syntax')
  finish
endif

syn case match

syn keyword vDirective    module
syn keyword vDeclaration  const mut
syn keyword vDeclType     struct enum fn

hi def link vDirective    Statement
hi def link vDeclaration  Keyword
hi def link vDeclType     Keyword

syn keyword vStatement    return
syn keyword vConditional  if else switch
syn keyword vRepeat       for in
syn keyword vLabel        case default

hi def link vStatement    Statement
hi def link vConditional  Conditional
hi def link vRepeat       Repeat
hi def link vLabel        Label

syn keyword vType         string bool byteptr voidptr rune
syn keyword vInts         i8 u8 i16 u16 i32 u32 i64 u64 byte int
syn keyword vFloats       f32 f64

hi def link vType         Type
hi def link vInts         Type
hi def link vFloats       Type

syn keyword vConstant     true false

hi def link vConstant     Constant

syn keyword vTodo         contained TODO FIXME
syn cluster vCommentGroup contains=vTodo
syn region  vComment      start="//" end="$" contains=@vCommentGroup

hi def link vTodo         Todo
hi def link vComment      Comment

syn region  vString      start=+'+ skip=+\\\\\|\\'+ end=+'+
syn region  vgoRawString start=+`+ end=+`+

hi def link vString      String
hi def link vRawString   String

syn region  goBlock       start="{" end="}" transparent fold
syn region  goParen       start='(' end=')' transparent

let b:current_syntax = "v"
