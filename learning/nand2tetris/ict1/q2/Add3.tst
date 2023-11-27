// Add3.tst, Adapted from Add16.tst 
// from the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

load Add3.hdl,
output-file Add3.out,
//compare-to Add3.cmp,
output-list a%B1.3.1 b%B1.3.1 out%B1.3.1;

set a %B000,
set b %B000,
eval,
output;

set a %B000,
set b %B111,
eval,
output;

set a %B111,
set b %B111,
eval,
output;

set a %B010,
set b %B101,
eval,
output;

set a %B011,
set b %B000,
eval,
output;

set a %B100,
set b %B110,
eval,
output;
