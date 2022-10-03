#include <iostream>
#include "lib/shape.h"

int main() {
    Shape* f = new Circle(2.0);

    std::cout << "Hello World!" << std::endl;
    f->plot();
    return 0;
}