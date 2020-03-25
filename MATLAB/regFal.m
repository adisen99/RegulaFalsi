%----------------------------------------------
% MATLAB code to determine the root of a user
% defined function using the algorithm of 
% the Regula-Falsi method or Method of false
% Assumptions
%----------------------------------------------

a    = input('Enter the function in the form of variable x:','s');
x(1) = input('enter value of x1=');
x(2) = input('enter value of x2=');
n    = input('no. of iterations=');

% Use the inline function tool to make the entered string, a function.
f    = inline(a);

% Find the values of y1 and y2
y1   = f(x(1));
y2   = f(x(2));

% The code to run the false assumptions algorithm 
while y1*y2>0
    x(1) = input('Enter value of x1=');
    x(2) = input('Enter value of x2=');
    y1=f(x(1));
    y2=f(x(2));
end

for i=1:n
    x(i)=(x(2)*y1-x(1)*y2)/(y1-y2);
    y3=f(x(i));
 if y1*y2<0
     x(2)=x(i);
     y2=f(x(2));
 else
     x(1)=x(i);
     y1=f(x(1));
 end
end

%Output the solution
x(i)
