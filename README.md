# 01-jflex

## Instalação:
`sudo apt update`

`sudo apt install jflex`

# Exemplo 01: 

## Arquivo: exemplo01.flex

/* Definição: seção para código do usuário. */


%%

/* Opções e Declarações: seção para diretivas e macros. */

%standalone

%%

/* Regras e Ações Associadas: seção de instruções para o analisador léxico. */

\t {System.ut.println("TAB")} //Isso é uma regra.

## Arquivo: entrada01.txt:
<pre>
se("casar")
	o código entre chaves é executado
senão
	o default é escrever o próprio 
	caractere na saída
</pre>

## Arquivo: entrada02.txt:

<pre>
Bla bla bla...
	Esta linha inicia com tabulação
		Esta, com duas tabulações
</pre>

## Execução:
`jflex exemplo01.flex`

`javac Yylex.java`

`java Yylex entrada01.txt`

`java Yylex entrada02.txt`

## Jogando a saída num arquivo:
`java Yylex entrada01.txt > saida01.txt`

`java Yylex entrada02.txt > saida02.txt`
