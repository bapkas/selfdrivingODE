# selfdrivingODE
A model of self driving cars using ordinary differential equations and MATLAB.

A model using the following assumptions:
- x_i(t) < x_(i+1)(t), for i = 1, . . . , M − 1.
- x′_i(t) = f(x_(i+1)(t) − x_i(t)), i = 1, . . . , M − 1
- x′_M (t) = g(x_M(t)).

We get the model by solving the system of ODE's we get from above using Euler's method for solving ODE's.

## To run it yourself
Clone repo and run selfdrivingODE.m file with hastighet.m file in the same directory. Will run an animation of the cars.
