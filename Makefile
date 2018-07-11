all: calculator calc_on_ast
	
calculator: calculator.l calculator.y
	bison -d calculator.y
	flex calculator.l
	cc -o $@ calculator.tab.c lex.yy.c -ll

calc_on_ast: calc_on_ast.l calc_on_ast.y calc_on_ast.h
	bison -d calc_on_ast.y
	flex -o calc_on_ast.lex.c calc_on_ast.l
	cc -o $@ calc_on_ast.tab.c calc_on_ast.lex.c calc_on_ast.c
