if exists('b:current_syntax')
    finish
endif

syn keyword mdcConditional jump end
syn keyword mdcIO read write print
syn keyword mdcFlash drawflush printflush
syn keyword mdcKeyword getlink radar sensor ubind ucontrol uradar ulocate noop
syn keyword mdcStructure set wait

syn keyword mdcOpSubCommand add sub mul div idiv mod pow equal notEqual land lessThan lessThanEq greaterThan greaterThanEq strictEqual shl shr or and xor not max min angle len noise abs log log10 floor ceil sqrt rand sin cos tan asin acos atan contained
syn match mdcStructure "\v^\s*op" nextgroup=mdcOpSubCommand skipwhite

syn keyword mdcLookupSubCommand block unit item liquid contained
syn match mdcStructure "\v^\s*lookup" nextgroup=mdcLookupSubCommand skipwhite

syn keyword mdcDrawSubCommand clear color stroke line rect lineRect poly linePoly triangle image contained
syn match mdcIO "\v^\s*draw" nextgroup=mdcDrawSubCommand skipwhite

syn keyword mdcControlSubCommand enabled shoot shootp configure color contained
syn match mdcKeyword "\v^\s*control" nextgroup=mdcControlSubCommand skipwhite

syn keyword mdcUcontrolSubCommand idle stop move approach boost pathfind target targetp itemDrop itemTake payDrop payTake payEnter payDrop mine flag build getBlock within contained
syn match mdcKeyword "\v^\s*ucontrol" nextgroup=mdcUcontrolSubCommand skipwhite

syn keyword mdcSubCommand ore building spawn damaged core storage generator turret factory repair rally battery resupply reactor always distance health shield armor maxHealth any enemy ally player attacker flying boss ground 

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
hi def link mdcStructure Macro
hi def link mdcIO PreProc
hi def link mdcFlash Special
hi def link mdcKeyword keyword
hi def link mdcTodos Todo
hi def link mdcAt Statement
hi def link mdcComment Comment
hi def link mdcOpSubCommand Operator
hi def link mdcLookupSubCommand Operator
hi def link mdcDrawSubCommand Operator
hi def link mdcControlSubCommand Operator
hi def link mdcUcontrolSubCommand Operator
hi def link mdcSubCommand Operator
hi def link mdcNumber Number
hi def link mdcString String
hi def link mdcConstant Constant
highlight default link mdcInterpolatedWrapper Delimiter

let b:current_syntax = 'mdc'
