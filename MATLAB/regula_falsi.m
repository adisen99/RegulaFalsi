%----------------------------------------------
% MATLAB code to determine the root of a user
% defined function using the algorithm of 
% the Regula-Falsi method or Method of false
% Assumptions
%----------------------------------------------

a   = input('Enter the function with right side equal to zero:','s');  % take function as input from the user
f   = inline(a);

% Code to determine the points between which the root lies
for x = 0:100
	if f(x)*f(x+1) <= 0
		fprintf('The root lies between:')
		round(x,0)
		fprintf('and')
		round(x+1,0)
	end
end

% Enter the initial approximation and Error as Input from User
xl  = input('Enter the first value of guess interval:\n');
xu  = input('Enter the end value of guess interval:\n');
tol = input('Enter the allowed error:');
N   = input('Enter the no. of iterations you want to run:\n');

% Define the actual algorithm as a function
if f(xl)*f(xu) < 0
else
    fprintf('The guess is incorrect! Enter the new guesses\n');
    xl = input('Enter the first value of guess interval again:\n') ;
    xu = input('Enter the end value of guess interval again:\n');
end
 
for i = 2:N
	xr = xl - (((xu - xl)/(f(xu) - f(xl)))*f(xl));
	if f(xu)*f(xr) < 0
		xl = xr;
	else
		xu = xr;
	end
	xnew(1) = 0;
	xnew(i) = xr;
	if abs((xnew(i) - xnew(i-1))/xnew(i)) < tol;
		break;
	end
end

str = ['The required root of the equation is: ', num2str(xr), '']