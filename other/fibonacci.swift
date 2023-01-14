func fib(n: Int) -> Int
{
    if n <= 0 { return 0; }
    if n == 1 { return 1; }
    var prev = 0;    
    var fib = 1;
    
    for i in 2...n
    {
        fib = fib + prev;
        prev = fib - prev;
    }
    
    return fib;
}

func fibR(n: Int) -> Int
{
    if n == 0 { return 0; }
    if n == 1 { return 1; }
    
    return fibR(n: n-1) + fibR(n: n-2)
}

var n = 10;
var fibonacci = fib(n:n)
var fibonacciR = fibR(n:n)

print("Fibonacci number: \(fibonacci)")
print("Fibonacci number r: \(fibonacciR)")
