%Inputs values of X

function [f_val, J] = test_function_01(X)
    f1 = X(1)^2 + X(2)^2 - 6 + X(3)^5;
    f2 = X(1)*X(3) + X(2) -12;
    f3 = sin(X(1) + X(2) + X(3));
    f_val = [f1, f2, f3];

    df1_x = 2*X(1); 
    df1_y = 2*X(2);
    df1_z = 5*X(3)^4;

    df2_x = X(3);
    df2_y = 1;
    df2_z = X(1);

    df3_x = cos(X(1) + X(2) + X(3)); 
    df3_y = cos(X(1) + X(2) + X(3)); 
    df3_z = cos(X(1) + X(2) + X(3));

    J = [df1_x, df1_y, df1_z; df2_x, df2_y, df2_z; df3_x, df3_y, df3_z];
end