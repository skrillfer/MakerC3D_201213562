package org.compi2.codigo3d.parser;

import java_cup.runtime.Symbol;

//Scanner para generar C3D
%%
%{
    //Código de usuario
    

%}

%cup
%class scanner
%public
%line
%char
%column
%full

MAS		= "+"
MENOS		= "-"
MULT       	= "*"
DIV             = "/"
POT             = "^"
PAR_IZQ         = "("
PAR_DER         = ")"
IG_IG         = "=="
DIF         = "!="
MAYQ         = ">"
MAYIQ         = ">="
MENQ         = "<"
MENIQ         = "<="
AND         = "&&"
OR         = "||"
NOT         = "!"

ID              = [A-Za-z][_0-9A-Za-z]*
ENTERO          = [0-9]+
DECIMAL         = [0-9]+"."[0-9]+

SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]

%%

<YYINITIAL> {ID}            { return new Symbol(sym.ID, yyline, yycolumn, yytext()); }
<YYINITIAL> {ENTERO}        { return new Symbol(sym.ENTERO, yyline, yycolumn, yytext()); }
<YYINITIAL> {DECIMAL}       { return new Symbol(sym.DECIMAL, yyline, yycolumn, yytext()); }
<YYINITIAL> {MAS}           { return new Symbol(sym.MAS, yyline, yycolumn, null); }
<YYINITIAL> {MENOS}	    { return new Symbol(sym.MENOS, yyline, yycolumn, null); }
<YYINITIAL> {MULT}          { return new Symbol(sym.MULT, yyline, yycolumn, null); }
<YYINITIAL> {DIV}	    { return new Symbol(sym.DIV, yyline, yycolumn, null); }
<YYINITIAL> {POT}	    { return new Symbol(sym.POT, yyline, yycolumn, null); }
<YYINITIAL> {PAR_IZQ}	    { return new Symbol(sym.PAR_IZQ, yyline, yycolumn, null); }
<YYINITIAL> {PAR_DER}	    { return new Symbol(sym.PAR_DER, yyline, yycolumn, null); }
<YYINITIAL> {IG_IG}	    { return new Symbol(sym.IG_IG, yyline, yycolumn, null); }
<YYINITIAL> {DIF}	    { return new Symbol(sym.DIF, yyline, yycolumn, null); }
<YYINITIAL> {MAYQ}	    { return new Symbol(sym.MAYQ, yyline, yycolumn, null); }
<YYINITIAL> {MAYIQ}	    { return new Symbol(sym.MAYIQ, yyline, yycolumn, null); }
<YYINITIAL> {MENQ}	    { return new Symbol(sym.MENQ, yyline, yycolumn, null); }
<YYINITIAL> {MENIQ}	    { return new Symbol(sym.MENIQ, yyline, yycolumn, null); }
<YYINITIAL> {AND}	    { return new Symbol(sym.AND, yyline, yycolumn, null); }
<YYINITIAL> {OR}	    { return new Symbol(sym.OR, yyline, yycolumn, null); }
<YYINITIAL> {NOT}	    { return new Symbol(sym.NOT, yyline, yycolumn, null); }


<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}

<YYINITIAL>. {
        String errLex = "Error léxico, caracter irreconocible: '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+yycolumn;
        System.err.println(errLex);
}