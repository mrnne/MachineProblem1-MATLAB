% MACHINE PROBLEM 1
% Program for graphing values of f(n) from n= 0 to 99

% Creating a sequence of numbers with 0 value having the size of 100
f=zeros(size(0:99));

% loop starting from 0 to 99
for x=0:99
    
    % boolean expression where it tests if x is less than 9
    a= x<=9;
    
    % boolean expression where it tests if x is greater than or equal to 10
    b= x>=10  ;
    
    % the value that is obtained from a & b is 1 (true) or 0 (false)
    
    
    % the boolean integer result from b is incorporated to the given piecewise
    % function [f(n-10)]
    % when the boolean expression is false or 0, the function will be
    % invalid and will not run
    c= (x*b)-10;
    
    % the result from c will result in a negative value when x= 0 to 9
    % when the index is negative the program will have an error
    % to prevent error the result from c will be in absolute value
    d= (abs(c));
    
    
% f is a variable with size 0:99, (x+1) is the index where a value should be stored
% (x+1) is used because, index cannot be negative integer or zero

% the piecewise function is added, while incorporating the boolean
% expression
% when the boolean expression is false, a certain function will be disregard
% because it is multiplied to 0

% f(d+1) is used because the index started with 1
f(x+1) = (x<=9)*(((x*(a))^2)-7) + (x>=10)*(f(d+1));
end

% plotting the values of x as 0:99, and y as f, using stem
stem(0:99,f);

% putting grid
grid on

% putting title
title('Machine Problem 1')

% putting label
xlabel('n(0-99)') 
ylabel('f(n)') 