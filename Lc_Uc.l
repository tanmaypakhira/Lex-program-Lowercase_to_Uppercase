%{
#include <stdio.h>
%}

%%

[a-z]           { printf("%c", yytext[0] - 'a' + 'A'); }  // Convert lowercase to uppercase
.               { printf("%c", yytext[0]); }                // Print other characters as is
\n              { printf("\n"); }                            // Handle newlines

%%

int main(void) {
    yylex();  // Start the lexical analysis
    return 0;
}
