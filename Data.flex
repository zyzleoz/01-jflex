%%
%class Data
%unicode // permite analiar emoji, acento etc.
%standalone // Execução independente do analisador sintático.


/*MACROS*/

DIGITO        = [0-9]
DIA           = 0[1-9]|[12][0-9]|3[01]
MES           = 0[1-9]|1[0-2]
ANO           = {DIGITO}{4}

/*REGRAS*/
%%

{DIA}"/"{MES}"/"{ANO} {
  System.out.println("DATA RECONHECIDA: " + yytext());
}