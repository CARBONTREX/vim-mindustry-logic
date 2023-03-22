if exists('b:current_syntax')
    finish
endif

syn keyword mdcConditional end
syn keyword mdcIO print
syn keyword mdcFlush drawflush printflush
syn keyword mdcKeyword getlink sensor ubind ulocate
syn keyword mdcStructure read write set wait noop

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

syn keyword mdcBuildingType core storage generator turret factory repair rally battery resupply reactor contained
syn keyword mdcUlocateSubCommand ore building spawn damaged contained nextgroup=mdcBuildingType skipwhite
syn match mdcKeyword "\v^\s*ulocate" nextgroup=mdcUlocateSubCommand skipwhite

syn keyword mdcJumpCondition always equal notEqual lessThan lessThanEq greaterThan greaterThanEq strictEqual contained
syn match mdcJumpLabel "\v[a-zA-Z0-9]+" contained nextgroup=mdcJumpCondition skipwhite
syn match Conditional "\v^\s*jump" nextgroup=mdcJumpLabel skipwhite

syn keyword mdcRadarSort distance health shield armor maxHealth contained
syn keyword mdcRadarCategory any enemy ally player attacker flying boss ground contained nextgroup=mdcRadarCategory,mdcRadarSort skipwhite
syn match mdcKeyword "\v^\s*radar" nextgroup=mdcRadarCategory skipwhite
syn match mdcKeyword "\v^\s*uradar" nextgroup=mdcRadarCategory skipwhite

syn match mdcNumber "\v<\d+>"
syn match mdcNumber "\v<\d+\.\d+>"
syn match mdcNumber "\v<0x\x+>"
syn match mdcNumber "\v<0b[01]+>"
syn keyword mdcConstant true false null
syn keyword mdcTodos TODO XXX FIXME NOTE contained
syn match mdcComment "\v#.*$" contains=mdcTodos
syn match mdcConstant "@[-a-zA-Z0-9]*"

syntax region mdcString start=/"/ end=/"/ oneline

hi def link mdcConditional Conditional
hi def link mdcStructure Macro
hi def link mdcIO PreProc
hi def link mdcFlush Special
hi def link mdcKeyword keyword

hi def link mdcTodos Todo
hi def link mdcComment Comment

hi def link mdcOpSubCommand Operator
hi def link mdcLookupSubCommand Operator
hi def link mdcDrawSubCommand Operator
hi def link mdcControlSubCommand Operator
hi def link mdcUcontrolSubCommand Operator
hi def link mdcUlocateSubCommand Operator
hi def link mdcBuildingType Operator
hi def link mdcJumpCondition Operator
hi def link mdcRadarSort Operator
hi def link mdcRadarCategory Operator

hi def link mdcNumber Number
hi def link mdcString String
hi def link mdcConstant Constant

let b:current_syntax = 'mdc'
