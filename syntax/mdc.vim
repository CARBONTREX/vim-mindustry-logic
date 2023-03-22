if exists('b:current_syntax')
    finish
endif

syn keyword mdcConditional jump end
syn keyword mdcIO read write draw print
syn keyword mdcFlash drawflush printflush
syn keyword mdcKeyword getlink control radar sensor ubind ucontrol uradar ulocate noop
syn keyword mdcStructure set wait lookup
syn keyword mdcOperator op contained

syn match mdcSubCommand "\v^\s*op\s+\zsadd\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zssub\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsmul\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsdiv\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsidiv\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsmod\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zspow\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsequal\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsnotEqual\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsland\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zslessThan\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zslessThanEq\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsgreaterThan\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsgreaterThanEq\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsstrictEqual\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsshl\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsshr\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsor\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsand\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsxor\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsnot\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsmax\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsmin\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsangle\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zslen\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsnoise\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsabs\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zslog\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zslog10\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsfloor\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsceil\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zssqrt\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsrand\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zssin\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zscos\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zstan\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsasin\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsacos\ze" contains=mdcOperator
syn match mdcSubCommand "\v^\s*op\s+\zsatan\ze" contains=mdcOperator

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
hi def link mdcOperator Operator
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
