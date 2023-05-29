#include "Calculator.hpp"

double Calculator::add(double a, double b) {
    return a + b;
}

double Calculator::subtract(double a, double b) {
    return a - b;
}

double Calculator::multiply(double a, double b) {
    return a * b;
}

double Calculator::divide(double a, double b) {
    if(b != 0) {
        return a / b;
    } else {
        return 0;
    }
}

double Calculator::power(double a, double b) {
    return pow(a, b);
}

double Calculator::root(double a, double b) {
    return pow(a, 1/b);
}
