import java_cup.runtime.*;

%%
%class Scanner
%cup
%unicode
%line
%column

/* Definición de palabras clave */
%{
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline+1, yycolumn+1, value);
    }
%}

digit = [0-9]
letter = [a-zA-Z]
Whitespace = [ \t\f]
LineTerminator = \n|\r|\r\n

%%

"int" { return symbol(ParserSym.INT, yytext()); }
"double" { return symbol(ParserSym.DOUBLE, yytext()); }
"String" { return symbol(ParserSym.STRING, yytext()); }

"{" { return symbol(ParserSym.LLA, yytext()); }
"}" { return symbol(ParserSym.LLC, yytext()); }
"(" { return symbol(ParserSym.CA, yytext()); }
")" { return symbol(ParserSym.CC, yytext()); }
":" { return symbol(ParserSym.DP, yytext()); }
"," { return symbol(ParserSym.COMMA, yytext()); }
"\"" { return symbol(ParserSym.COMILLA, yytext()); }
"=" { return symbol(ParserSym.IGUAL, yytext()); }
";" { return symbol(ParserSym.PYC, yytext()); }
"+" { return symbol(ParserSym.PLUS, yytext()); }
"*" { return symbol(ParserSym.PRO, yytext()); }

{letter}({letter}|{digit})* { return symbol(ParserSym.ID, yytext()); }
"<?xml" { return symbol(ParserSym.XML_START, yytext()); }
"?>" { return symbol(ParserSym.XML_END, yytext()); }
"<" { return symbol(ParserSym.LT, yytext()); }
">" { return symbol(ParserSym.GT, yytext()); }
"</" { return symbol(ParserSym.CLOSING_TAG, yytext()); }
"/>" { return symbol(ParserSym.SELF_CLOSING_TAG, yytext()); }
"=" { return symbol(ParserSym.EQUALS, yytext()); }
"\"" { return symbol(ParserSym.QUOTE, yytext()); }
{digit}+ { return symbol(ParserSym.NUM, yytext()); }
{digit}+"."({digit})+ { return symbol(ParserSym.DECIMAL, yytext()); }

{Whitespace} {}

. { System.err.println("Warning: Caracter no reconocido '" + yytext() + "' ignorado en línea " + yyline + ", columna " + yycolumn + "."); }

