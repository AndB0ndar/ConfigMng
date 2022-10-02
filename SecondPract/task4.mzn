% Use this editor as a MiniZinc scratch book
include "alldifferent.mzn";

var 0..9: A; var 0..9: B; var 0..9: C;
var 0..9: D; var 0..9: E; var 0..9: F;

constraint A + B + C == D + E + F;
constraint alldifferent([A,B,C,D,E,F]);

solve minimize A + B + C;

output ["   ",show(A), show(B), show(C), "\n",
        "= ", show(D), show(E), show(F), "\n"];
