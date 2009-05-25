" Vim syntax file
" Language:	Squirrel
" Maintainer:	YASUHIRO.Kanda <y-kanda@r6.dion.ne.jp>
" Last Change:	2009/02/07


" | keywords
" ----------------------------------------------------------------------------
" break, case, catch, class, clone, continue, default, delegate, delete, else,
" extends, for, function, if, in, local, null, resume, return, switch, this,
" throw, try, typeof, while, parent, yield, constructor, vargc, vargv, static,
" instanceof, true, false, 
" 
" 
" | operators
" ----------------------------------------------------------------------------
" !, !=, ||, ==, &&, <=, =>, >, +, +=, -, -=, /, /=, *, *=, %, %=,  ++, --, <-,
" =, &, ^, |, ~, >>, <<, >>>
" 
" 
" | other tokens
" ----------------------------------------------------------------------------
" {, }, [, ], ., :, ::, ', ;, ", @",
" 
" 
" | literals
" ----------------------------------------------------------------------------
" 34 									Integer	
" 0xFF00A120 							Integer
" 'a' 									Integer 
" 1.52 									Float
" 1.e2 									Float
" 1.e-2 								Float
" "I'm a string"					 	String
" @"I'm a verbatim string" 				String
" @"I'm a multiline verbatim string" 	String


syntax case match
syntax keyword sqStatement		clone
syntax keyword sqStatement		delegate
syntax keyword sqStatement		resume
syntax keyword sqStatement		return
syntax keyword sqStatement		this
syntax keyword sqStatement		parent
syntax keyword sqStatement		constructor
syntax keyword sqStatement		vargc
syntax keyword sqStatement		vargv
syntax keyword sqStatement		yield 
syntax keyword sqStatement		sqConditional
syntax keyword sqStatement		else
syntax keyword sqStatement		if
syntax keyword sqStatement		switch 
syntax keyword sqStatement		sqExeption
syntax keyword sqStatement		catch
syntax keyword sqStatement		throw
syntax keyword sqStatement		try 
syntax keyword sqLabel			default
syntax keyword sqLabel			case
syntax keyword sqRepeat			for
syntax keyword sqRepeat			while 
syntax keyword sqRepeat			continue
syntax keyword sqRepeat			break
syntax keyword sqRepeat			in
syntax keyword sqStructure		class
syntax keyword sqStructure		extends
syntax keyword sqOperator		delete
syntax keyword sqOperator		typeof
syntax keyword sqOperator		instanceof 
syntax keyword sqOperator		"!"
syntax keyword sqOperator		"!="
syntax keyword sqOperator		"||"
syntax keyword sqOperator		"=="
syntax keyword sqOperator		"&&"
syntax keyword sqOperator		"<="
syntax keyword sqOperator		"=>"
syntax keyword sqOperator		">"
syntax keyword sqOperator		"+"
syntax keyword sqOperator		"+="
syntax keyword sqOperator		"-"
syntax keyword sqOperator		"-="
syntax keyword sqOperator		"/"
syntax keyword sqOperator		"/="
syntax keyword sqOperator		"*"
syntax keyword sqOperator		"*="
syntax keyword sqOperator		"%"
syntax keyword sqOperator		"%="
syntax keyword sqOperator		"++"
syntax keyword sqOperator		"--"
syntax keyword sqOperator		"<-"
syntax keyword sqOperator		"="
syntax keyword sqOperator		"&"
syntax keyword sqOperator		"^"
syntax keyword sqOperator		"|"
syntax keyword sqOperator		"~"
syntax keyword sqOperator		">>"
syntax keyword sqOperator		"<<"
syntax keyword sqOperator		">>>"
syntax keyword sqFunction		function
syntax keyword sqStorageClass	local
syntax keyword sqStorageClass	static
syntax keyword sqConstant		null
syntax keyword sqBoolean		true
syntax keyword sqBoolean		false
syntax region  sqComment		start=+/\*+ end=+\*/+
syntax region  sqComment		start="//" skip="\\$" end="$" keepend
syntax region  sqString			start=+"+ skip=+\\"+ end=+"+
syntax region  sqString			start=+@"+ skip=+\\"+ end=+"+
syntax region  sqCharacter		start=+'+ end=+'+
syntax match   sqFloat			+\d*\.\d*+
syntax match   sqFloat			+\d*\.\d*e\d*+
syntax match   sqFloat			+\d*\.\d*e-\d*+
syntax match   sqNumber			+[1-9]\d*+
syntax match   sqNumber			+[0x]\d*+
syntax match   sqNumber			+[0]\d*+


:highlight link sqStatement     Statement
:highlight link sqConditional   Conditional
:highlight link sqException     Exception
:highlight link sqLabel         Label
:highlight link sqRepeat        Repeat
:highlight link sqStatement     Structure
:highlight link sqOperator      Operator
:highlight link sqFunction      Function
:highlight link sqStorageClass  StorageClass
:highlight link sqConstant      Constant
:highlight link sqBoolean       Boolean
:highlight link sqComment       Comment
:highlight link sqString        String
:highlight link sqCharacter     Character
:highlight link sqFloat         Float
:highlight link sqNumber        Number


syn sync maxlines=50


" Ç±ÇÍÇfiletype.vim Ç…èëÇ≠Ç±Ç∆
" au BufNewFile, BufRead *.nut setf squirrel
