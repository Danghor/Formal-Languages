package Converter;

%% 

%class Html2Txt
%standalone
%line
%unicode

%xstate header script
%%

"<head>"            { yybegin(header);         }
"<script"[^>\n]+">" { yybegin(script);         }
"<"[^>\n]+">"       { /* skip html tags */     }
[\n]+               { System.out.print("\n");  }
&nbsp;              { System.out.print(" ");   }
&auml;              { System.out.print("�");   }
&ouml;              { System.out.print("�");   }
&uuml;              { System.out.print("�");   }
&Auml;              { System.out.print("�");   }
&Ouml;              { System.out.print("�");   }
&Uuml;              { System.out.print("�");   }
&szlig;             { System.out.print("�");   }

<header>"</head>"   { yybegin(YYINITIAL);      }
<header>.|\n        { /* skip anything else */ }

<script>"</script>" { yybegin(YYINITIAL);      }
<script>.|\n        { /* skip anything else */ }

