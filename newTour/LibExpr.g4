grammar LibExpr;
import CommonLexerRules;

prog:   stat+ ;

stat:   expr NEWLINE            # printExpr
    |   ID '=' expr NEWLINE     # assign
    |   NEWLINE                 # blank
    ;

expr:   expr ('*'|'/') expr     # MulDiv
    |   expr ('+'|'-') expr     # AddSub
    |   INT                     # int
    |   ID                      # id
    |   '(' expr ')'            # parens
    ;

MUL : '*' ; // assigns token name to '*' used above in grammar
DIV : '/' ;
ADD : '+' ;
SUB : '-' ;