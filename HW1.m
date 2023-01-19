% Tyler Bradley
% CMPE677 HW1

% Question 1
%   Which of the following generates a column vector?
    [1 2 3];
    [1; 2; 3];
    [1 2 3]';
    [1, 2, 3];
% The second and third expressions generate a column vectors. The second
% expression does this by putting each matrix entry on a new line, the
% thrid epxression uses the transpose operator

% Question 2
%   Given the matrix A = [1 2 3; 2 3 4; 3 4 5; 4 5 6], which of the
%   expressions would give the matrix B = [2 3; 3 4; 4 5; 5 6]

    A = [1 2 3; 2 3 4; 3 4 5; 4 5 6];
    Ba = A(: ,2:3);
    Bb = A(:,2);
    Bc = A(2:3,:);
    Bd = A(:,:);
% only option A->(Ba) creates the wanted matrix, going through each part of
% that expression. (:-> this colon makes it so all rows are selected, then
% (,2:3) makes it so only columns 2 and 3 are selected.

% Question 3
%   Suppose A = [1 2; 3 4], B = [2 2; 3 3; 4 4], C = eye(3), D = [1 2 3],
%   E = zeros(3, 3). Which of the following commands will not give an
%   error?
    
    A = [1 2; 3 4];
    B = [2 2; 3 3; 4 4];
    C = eye(3);
    D = [1 2 3];
    E = zeros(3, 3);

    A*B';
    %A*B;
    %A-B;
    C*E;
    C.*E;
    D*B;

% Expressions A, D, E, and F do not give errors, the other give errors due
% having incompatible sizes










