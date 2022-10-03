#include "shape.h"
#include <iostream>

void Circle::plot() { std::cout << "Cercle de rayon " << rayon << std::endl; }
double Circle::square() { return 3.14 * rayon * rayon; }
