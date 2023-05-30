package XMLanalizadoxml;
import java.io.*;
import java.util.ArrayList;
import java_cup.runtime.*;

%%
%public
%class XMLScanner
%cup
%function next_token

digit = [0-9]
letter = [a-zA-Z]
Whitespace = [ \t\f] | {LineTerminator}
LineTerminator = \r|\n|\r\n

%%

<YYINITIAL>"int" { return symbol(ParserSym.INT, yytext()); }
<YYINITIAL>"double" { return symbol(ParserSym.DOUBLE, yytext()); }
<YYINITIAL>"String" { return symbol(ParserSym.STRING, yytext()); }

<YYINITIAL>"{" { return symbol(ParserSym.LLA, yytext()); }
<YYINITIAL>"}" { return symbol(ParserSym.LLC, yytext()); }
<YYINITIAL>"(" { return symbol(ParserSym.CA, yytext()); }
<YYINITIAL>")" { return symbol(ParserSym.CC, yytext()); }
<YYINITIAL>":" { return symbol(ParserSym.DP, yytext()); }
<YYINITIAL>"," { return symbol(ParserSym.COMMA, yytext()); }
<YYINITIAL>"\"" { return symbol(ParserSym.COMILLA, yytext()); }
<YYINITIAL>"=" { return symbol(ParserSym.IGUAL, yytext()); }
<YYINITIAL>";" { return symbol(ParserSym.PYC, yytext()); }
<YYINITIAL>"+" { return symbol(ParserSym.PLUS, yytext()); }
<YYINITIAL>"*" { return symbol(ParserSym.PRO, yytext()); }

<YYINITIAL>{letter}({letter}|{digit})* { return symbol(ParserSym.ID, yytext()); }
<YYINITIAL>"<?xml" { return symbol(ParserSym.XML_START, yytext()); }
<YYINITIAL>"?>" { return symbol(ParserSym.XML_END, yytext()); }
<YYINITIAL>"<" { return symbol(ParserSym.LT, yytext()); }
<YYINITIAL>">" { return symbol(ParserSym.GT, yytext()); }
<YYINITIAL>"</" { return symbol(ParserSym.CLOSING_TAG, yytext()); }
<YYINITIAL>"/>" { return symbol(ParserSym.SELF_CLOSING_TAG, yytext()); }
<YYINITIAL>"=" { return symbol(ParserSym.EQUALS, yytext()); }
<YYINITIAL>"\"" { return symbol(ParserSym.QUOTE, yytext()); }
<YYINITIAL>({digit})+ { return symbol(ParserSym.NUM, yytext()); }
<YYINITIAL>({digit})+"."({digit})+ { return symbol(ParserSym.DECIMAL, yytext()); }

<YYINITIAL>{Whitespace} {}

\n {yychar=1;}
. {System.err.println("warning: Unrecognized character '" + yytext()+"' -- ignored" + " at : "+ (yyline+1) + " " + (yycolumn+1) + " " + yychar); }
