
func factorialRecursive(n: Int) -> Int {
    if n < 2 { return 1; }
    return n * factorial(n: n - 1);
}

func factorial(n: Int) -> Int {
    if n < 2 { return 1; }
    var result: Int = 1;
    for i in 1...n {
        result = result * i;
    }
    return result;
}

print("Iterative results:");
print(factorial(n: 2) == 2 ? "PASS" : "FAIL");
print(factorial(n: 3) == 6 ? "PASS" : "FAIL");
print(factorial(n: 5) == 120 ? "PASS" : "FAIL");
print(factorial(n: 10) == 3628800 ? "PASS" : "FAIL");
print(factorial(n: -1) == 1 ? "PASS" : "FAIL");
print(factorial(n: 0) == 1 ? "PASS" : "FAIL");

print();

print("Recursive results:");
print(factorialRecursive(n: 2) == 2 ? "PASS" : "FAIL");
print(factorialRecursive(n: 3) == 6 ? "PASS" : "FAIL");
print(factorialRecursive(n: 5) == 120 ? "PASS" : "FAIL");
print(factorialRecursive(n: 10) == 3628800 ? "PASS" : "FAIL");
print(factorialRecursive(n: -1) == 1 ? "PASS" : "FAIL");
print(factorialRecursive(n: 0) == 1 ? "PASS" : "FAIL");

