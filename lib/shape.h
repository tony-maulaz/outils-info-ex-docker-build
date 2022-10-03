
class Shape {
public:
    virtual double square() = 0;
    virtual void plot() = 0;
    virtual ~Shape() {}
};

class Circle : public Shape {    
public:
    Circle(double r) : rayon(r) {}

    double square() override;
    void plot() override;
private:
    double rayon;
};