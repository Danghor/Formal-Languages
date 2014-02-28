// Iterative Berechnung der L�sung der Gleichung x = cos(x).
function solve() {
    x    := 0;
    oldX := 1;
    while (abs(x - oldX) > 1.0e-12) {
        oldX := x;
        x := cos(x);
        print(x);
    }
    return x;
}

x := solve();
print("L�sung von \"x := cos(x)\" ist x := ", x, " (iterative L�sung)");

// Rekursive Berechnung der L�sung der Gleichung x := cos(x).
function solveRecursive(x) {
    if (abs(x - cos(x)) < 1.0e-12) {
        return x;
    }    
    return solveRecursive(cos(x));
}

print("L�sung von \"x := cos(x)\" ist x = ", solveRecursive(0), " (rekursive L�sung)");

quit;

