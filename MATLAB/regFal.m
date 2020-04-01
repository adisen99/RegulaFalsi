%----------------------------------------------
% MATLAB code to determine the root of a user
% defined function using the algorithm of 
% the Regula-Falsi method or Method of false
% Assumptions
%----------------------------------------------

a    = input('Enter the function in the form of variable x:','s');

% Use the inline function tool to make the entered string, a function.
f    = inline(a);

% Code to determine the points between which the root lies
for i = 0:100
    if f(i)*f(i+1) <= 0
        fprintf('The root lies between:')
        round(i,0)
        fprintf('and')
        round(i+1,0)
    end
end

x(1) = input('enter value of x1=');
x(2) = input('enter value of x2=');
n    = input('no. of iterations=');

% Find the values of y1 and y2
y1   = f(x(1));
y2   = f(x(2));

% The code to run the false assumptions algorithm 
while y1*y2 > 0
    x(1) = input('Enter value of x1=');
    x(2) = input('Enter value of x2=');
    y1 = f(x(1));
    y2 = f(x(2));
end

for i = 1:n
    x(i+2) = (x(i+1)*f(x(i)) - x(1)*f(x(i+1)))/(f(x(i)) - f(x(i+1)));
    y3 = f(x(i+2));
 if f(x(i+1))*f(x(i+2)) < 0
     x(i+2) = x(i);
 else
     x(i+1) = x(i);
 end
end

%Output the solution
x(i)
