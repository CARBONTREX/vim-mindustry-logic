if exists('b:current_syntax')
    finish
endif

syn match mdcConditional "\v^\s*end"
syn match mdcFunction "\v^\s*drawflush" 
syn match mdcFunction "\v^\s*printflush" 
syn match mdcFunction "\v^\s*ubind" 
syn match mdcStatement "\v^\s*print"
syn match mdcStatement "\v^\s*getlink" 
syn match mdcStatement "\v^\s*sensor" 
syn match mdcStatement "\v^\s*read" 
syn match mdcStatement "\v^\s*write" 
syn match mdcStatement "\v^\s*set" 
syn match mdcStatement "\v^\s*wait" 
syn match mdcStatement "\v^\s*noop" 

syn keyword mdcOpSubCommand add sub mul div idiv mod pow equal notEqual land lessThan lessThanEq greaterThan greaterThanEq strictEqual shl shr or and xor not max min angle len noise abs log log10 floor ceil sqrt rand sin cos tan asin acos atan contained
syn match mdcStatement "\v^\s*op" nextgroup=mdcOpSubCommand skipwhite

syn keyword mdcLookupType block unit item liquid contained
syn match mdcStatement "\v^\s*lookup" nextgroup=mdcLookupType skipwhite

syn keyword mdcDrawSubCommand clear color stroke line rect lineRect poly linePoly triangle image contained
syn match mdcStatement "\v^\s*draw" nextgroup=mdcDrawSubCommand skipwhite

syn keyword mdcControlSubCommand enabled shoot shootp configure color contained
syn match mdcFunction "\v^\s*control" nextgroup=mdcControlSubCommand skipwhite

syn keyword mdcUcontrolSubCommand idle stop move approach boost pathfind target targetp itemDrop itemTake payDrop payTake payEnter payDrop mine flag build getBlock within contained
syn match mdcFunction "\v^\s*ucontrol" nextgroup=mdcUcontrolSubCommand skipwhite

syn keyword mdcBuildingType core storage generator turret factory repair rally battery resupply reactor contained
syn keyword mdcUlocateType ore building spawn damaged contained nextgroup=mdcBuildingType skipwhite
syn match mdcFunction "\v^\s*ulocate" nextgroup=mdcUlocateType skipwhite

syn keyword mdcJumpCondition always equal notEqual lessThan lessThanEq greaterThan greaterThanEq strictEqual contained
syn match mdcJumpLabel "\v[a-zA-Z0-9]+" contained nextgroup=mdcJumpCondition skipwhite
syn match Conditional "\v^\s*jump" nextgroup=mdcJumpLabel skipwhite

syn keyword mdcRadarSort distance health shield armor maxHealth contained
syn keyword mdcRadarType any enemy ally player attacker flying boss ground contained nextgroup=mdcRadarType,mdcRadarSort skipwhite
syn match mdcFunction "\v^\s*radar" nextgroup=mdcRadarType skipwhite
syn match mdcFunction "\v^\s*uradar" nextgroup=mdcRadarType skipwhite

syn match mdcNumber "\v<\d+>"
syn match mdcNumber "\v<\d+\.\d+>"
syn match mdcNumber "\v<0x\x+>"
syn match mdcNumber "\v<0b[01]+>"
syn keyword mdcConstant true false null
syn keyword mdcTodos TODO XXX FIXME NOTE contained
syn match mdcComment "\v#.*$" contains=mdcTodos
syn match mdcConstant "@[-a-zA-Z0-9]*"
syn keyword mdcUnitRegister @unit

syntax region mdcString start=/"/ end=/"/ oneline

hi def link mdcConditional Conditional
hi Conditional ctermfg=green
hi def link mdcStatement Statement
hi def link mdcFunction Function
hi Function ctermfg=blue

hi def link mdcTodos Todo
hi def link mdcComment Comment

hi def link mdcOpSubCommand Operator
hi def link mdcLookupType Operator
hi def link mdcDrawSubCommand Operator
hi def link mdcControlSubCommand Operator
hi def link mdcUcontrolSubCommand Operator
hi def link mdcUlocateType Operator
hi def link mdcBuildingType Operator
hi def link mdcJumpCondition Operator
hi def link mdcRadarSort Operator
hi def link mdcRadarType Operator

hi def link mdcNumber Number
hi def link mdcString String
hi def link mdcConstant Constant
hi def link mdcUnitRegister Identifier

let b:current_syntax = 'mdc'
