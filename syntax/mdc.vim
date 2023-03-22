if exists('b:current_syntax')
    finish
endif

syn keyword mdcConditional jump end
syn keyword mdcIO read write draw print
syn keyword mdcFlash drawflush printflush
syn keyword mdcKeyword getlink control radar sensor ubind ucontrol uradar ulocate noop
syn keyword mdcStructure set wait lookup
"syn keyword mdcOperator op

syn match mdcSubCommand "\v^\s*op\s+\zsadd\ze"
syn match mdcSubCommand "\v^\s*op\s+\zssub\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsmul\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsdiv\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsidiv\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsmod\ze"
syn match mdcSubCommand "\v^\s*op\s+\zspow\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsequal\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsnotEqual\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsland\ze"
syn match mdcSubCommand "\v^\s*op\s+\zslessThan\ze"
syn match mdcSubCommand "\v^\s*op\s+\zslessThanEq\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsgreaterThan\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsgreaterThanEq\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsstrictEqual\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsshl\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsshr\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsor\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsand\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsxor\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsnot\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsmax\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsmin\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsangle\ze"
syn match mdcSubCommand "\v^\s*op\s+\zslen\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsnoise\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsabs\ze"
syn match mdcSubCommand "\v^\s*op\s+\zslog\ze"
syn match mdcSubCommand "\v^\s*op\s+\zslog10\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsfloor\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsceil\ze"
syn match mdcSubCommand "\v^\s*op\s+\zssqrt\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsrand\ze"
syn match mdcSubCommand "\v^\s*op\s+\zssin\ze"
syn match mdcSubCommand "\v^\s*op\s+\zscos\ze"
syn match mdcSubCommand "\v^\s*op\s+\zstan\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsasin\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsacos\ze"
syn match mdcSubCommand "\v^\s*op\s+\zsatan\ze"
syn keyword mdcSubCommand ore building spawn damaged core storage generator turret factory repair rally battery resupply reactor idle stop move approach boost pathfind target targetp itemDrop itemTake payDrop payTake payEnter mine flag build getBlock within always distance health shield armor maxHealth any enemy ally player attacker flying boss ground enabled shoot shootp configure color clear color stroke line rect lineRect poly linePoly triangle image block unit item liquid

syn match mdcNumber "\v<\d+>"
syn match mdcNumber "\v<\d+\.\d+>"
syn match mdcNumber "\v<0x\x+>"
syn match mdcNumber "\v<0b[01]+>"
syn keyword mdcConstant true false null
syn keyword mdcTodos TODO XXX FIXME NOTE contained
syn match mdcComment "\v#.*$" contains=mdcTodos
syn match mdcAt "@[-a-zA-Z0-9]*"

syntax region mdcString start=/"/ end=/"/ oneline contains=mdcInterpolatedWrapper
syntax region mdcInterpolatedWrapper start="\v\\\(\s*" end="\v\s*\)" contained containedin=mdcString contains=mdcInterpolatedString
syntax match mdcInterpolatedString "\v\w+(\(\))?" contained containedin=mdcInterpolatedWrapper


hi def link mdcConditional Conditional
"hi def link mdcOperator Operator
hi def link mdcIO PreProc
hi def link mdcFlash Special
hi def link mdcKeyword keyword
hi def link mdcStructure Macro
hi def link mdcTodos Todo
hi def link mdcAt Statement
hi def link mdcComment Comment
hi def link mdcSubCommand Operator
hi def link mdcNumber Number
hi def link mdcString String
hi def link mdcConstant Constant
highlight default link mdcInterpolatedWrapper Delimiter

let b:current_syntax = 'mdc'
