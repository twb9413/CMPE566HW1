% Tyler Bradley
% CMPE677 HW1
%--------------------------------------------------------------------------
% Question 1
%   Which of the following generates a column vector?
    [1 2 3];
    [1; 2; 3];
    [1 2 3]';
    [1, 2, 3];
% The second and third expressions generate a column vectors. The second
% expression does this by putting each matrix entry on a new line, the
% thrid epxression uses the transpose operator
%--------------------------------------------------------------------------
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
%--------------------------------------------------------------------------
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
%--------------------------------------------------------------------------
% Question 4
%   Suppose B = [2 2; 3 3; 4 4], D = [1 2 3], F = zeros(2,1). Which of the
%   follwoing will not give an error?
    B = [2 2; 3 3; 4 4];
    D = [1 2 3];
    F = zeros(2,1);
    
    %B - repmat(F, 1, 3)
    [D' D'*2];
    %B + [F; F; F];
    B + repmat(F', 3, 1);
    
% The only expressions which do not have errors are expressions B and D,
% others run into issues with incompatible matrix sizes
%--------------------------------------------------------------------------
% Question 5
% Suppose we want to create a 4x1 matrix populated with all 5's. Which
% commands achieve this?
    A = ones(4,1)*5
    B = ones(4) * 5
    C = 5 * ones(1,4)'
    D = ones(4, 1) .* 5
    E = eye(4) * 5
% A, C, and D  all create the desired 4x1 matrix with all 5's
%--------------------------------------------------------------------------
    










