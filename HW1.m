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
    A = ones(4,1)*5;
    B = ones(4) * 5;
    C = 5 * ones(1,4)';
    D = ones(4, 1) .* 5;
    E = eye(4) * 5;
% A, C, and D  all create the desired 4x1 matrix with all 5's
%--------------------------------------------------------------------------
% Question 6
% Given the Matrix A, which of the expressions would give the matrix B
    A = [1 2 3 4 5; 2 3 4 5 6; 3 4 5 6 7; 4 5 6 7 8; 5 6 7 8 9];
    B = A(2:4, 1:2:5);
    B = A(1:2:5, 2:4);
    B = A(2:4, [1 3 5]);
    B = [A(1, 2:4) A(3,2:4) A(5,2:4)];
    B = [A(2:4, 1) A(2:4,3) A(2:4,5)];
    B = A(1:2:5, 2:4);
    
% The desired matrix is achieved with expressions A, C, and E
%--------------------------------------------------------------------------
% Question 7
    x = 0:.05:(3/2)*pi;
    y1 = sin(x);
    plot(x, y1, 'r', 'LineWidth', 3);
    hold on;
    y2 = sinc(x);
    plot(x, y2, 'g', 'LineWidth', 3);
    hold on;
    y3 = sin(x.^2);
    plot(x, y3, 'b', 'LineWidth', 3);
    xlabel("time", 'FontSize', 10);
    ylabel("response", 'FontSize', 10);
    title("CMPE677, HW1, Problem 7, $\lambda$=0", 'interpreter', 'latex', 'FontSize', 12);
    legend('sin(x)', 'sinc(x)', 'sin(x^2)');
    print('-dpng', 'myFirstPlot.png')
%--------------------------------------------------------------------------
% Question 8 
    A = [1 0 -4 8 3; 4 -2 3 3 1];
    B = zeros(1,5);
    for index = 1:size(A,2)
        if A(1, index) > A(2, index)
            B(index) = A(1, index);
        else
            B(index) = A(2, index);
        end
    end
%--------------------------------------------------------------------------
% Question 9
% Which of the following make 2x3 matrices that only have 0s;
    A = zeros(2);
    B = zeros(3, 2);
    C = [eye(2) zeros(2,1)] * 0;
    D = eye(2,3)*0;
    E = [0 0; 0 0; 0 0];
    F = [0 0 0; 0 0 0];
% C, D, and F create 2x3 matrices
%--------------------------------------------------------------------------
% Question 10
    hold off
    mu=[0 3];
    sigma=[5 -2 ;-2 2];
    x1 = -10:0.1:10; x2 = x1;
    [X1,X2] = meshgrid(x1,x2);
    F = mvnpdf([X1(:) X2(:)], mu,sigma);
    F = reshape(F,length(x2),length(x1));
    contour(x1,x2,F);
    grid on
    axis square
    title('CMPE 677, Hwk 1, Problem 10','fontsize',12);
    print -dpng cmpe677_hwk1_10.png








