package Converter;

%% 

%class Html2Txt
%standalone
%unicode

%xstate header script
%%

"<head>"            { yybegin(header);         }
"<script"[^>]+">"   { yybegin(script);         }
"<"[^>]+">"         { /* skip html tags */     }
\R+                 { System.out.print("\n");  }
&nbsp;              { System.out.print(" ");   }
&auml;              { System.out.print("�");   }
&ouml;              { System.out.print("�");   }
&uuml;              { System.out.print("�");   }
&Auml;              { System.out.print("�");   }
&Ouml;              { System.out.print("�");   }
&Uuml;              { System.out.print("�");   }
&szlig;             { System.out.print("�");   }

<header>"</head>"   { yybegin(YYINITIAL);      }
<header>.|\R        { /* skip anything else */ }

<script>"</script>" { yybegin(YYINITIAL);      }
<script>.|\R        { /* skip anything else */ }

