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

//This function will cause stack overflow
// because it does not have a base case.
function infiniteRecursion(x: int): int {
  return infiniteRecursion(x);
}