val constraints =
    [TYVAR "a" ~ TYVAR "b"   /\ TYVAR "b" ~ TYVAR "c"    /\
     TYVAR "a" ~ TYCON "int" /\ TYVAR "c" ~ TYCON "bool"

    , CONAPP (TYCON "function", 
              [CONAPP (TYCON "arguments", 
                       [CONAPP (TYCON "list", [TYVAR "a"])]), TYVAR "b"])
      ~ TYCON "int" /\ TYVAR "b" ~ TYCON "bool"

    , CONAPP (TYCON "function", 
                [CONAPP (TYCON "arguments", [TYVAR "a"]), TYVAR "b"])
             ~ TYCON "int"
      /\ TYVAR "a" ~ TYVAR "b"
    ] 
