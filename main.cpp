#include "Calculator.hpp"

int main() {
    Calculator calc;

    double a = 10;
    double b = 5;

    std::cout << "a + b = " << calc.add(a, b) << std::endl;
    std::cout << "a - b = " << calc.subtract(a, b) << std::endl;
    std::cout << "a * b = " << calc.multiply(a, b) << std::endl;
    std::cout << "a / b = " << calc.divide(a, b) << std::endl;
    std::cout << "a ^ b = " << calc.power(a, b) << std::endl;
    std::cout << "root(a, b) = " << calc.root(a, b) << std::endl;

    return 0;
}
