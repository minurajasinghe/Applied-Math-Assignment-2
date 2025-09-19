%Implementation of finite difference approximation
%for Jacobian of multidimensional function
%INPUTS:
%fun: the mathetmatical function we want to differentiate
%x: the input value of fun that we want to compute the derivative at
%OUTPUTS:
%J: approximation of Jacobian of fun at x
function J = approximate_jacobian(fun,x)
    J = zeros(length(x), length(fun))
    for i = (1:length(x))
        %creating e matrices-- [1;0...0], [0;1;0...0]
        e = zeros(length(x), 1);
        e(i) = 1;

        J(i,:) = 
    end
end