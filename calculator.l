%{
  #include "calculator.tab.h"
%}
%%
"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
\n { return EOL; }
[ \t] { }
"(" { return OP; }
")" { return CP; }
"//".*  { }
. { printf("Unknown character %s\n", yytext); }
%%
