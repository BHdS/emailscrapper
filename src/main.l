
%{
#include <stdio.h>
%}


%%
[a-zA-Z0-9]+[a-zA-Z0-9\._-]*[a-zA-Z0-9]+@[a-zA-Z0-9]+(".com"|".unicamp.br")?-
[a-zA-Z0-9]+[a-zA-Z0-9\._-]*[a-zA-Z0-9]+@[a-zA-Z0-9]+(".com"|".unicamp.br")? {ECHO;printf("\n");}

. {}
\n {}

%%

int main() {
  yylex();
  return 0;
}
