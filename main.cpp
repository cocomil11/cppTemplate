#include <iostream>
#include "hello.hpp"
#include "good_morning.hpp"
#include <Eigen/Dense>
#include <dlib/any.h>

using Eigen::MatrixXd;

int main () {
    hello();
    good_morning();
     MatrixXd m(2,2);
  m(0,0) = 3;
  m(1,0) = 2.5;
  m(0,1) = -1;
  m(1,1) = m(1,0) + m(0,1);
  std::cout << m << std::endl;
  
}