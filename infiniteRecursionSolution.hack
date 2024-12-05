function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//Corrected function with a base case to prevent stack overflow.
function infiniteRecursion(x: int): int {
  if (x == 0) {
    return 0; //Base case
  } else {
    return x + infiniteRecursion(x - 1);
  }
} 

function test(): void {
  echo infiniteRecursion(5); //This should execute without error.
}
