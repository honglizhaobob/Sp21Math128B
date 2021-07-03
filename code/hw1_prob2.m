% plotting unit ball with respect to different norms

% sample from a Gaussian
X = randn(10000, 3);

% l1 norm coeffs
l1_coef = sum(abs(X).^1, 2).^(1/1); 
% l3 norm coeffs
l3_coef = sum(abs(X).^3, 2).^(1/3); 
% normalize data by p-norm 
X_l1_data = (bsxfun(@times, X, 1./l1_coef)); 
X_l3_data = (bsxfun(@times, X, 1./l3_coef)); 


figure; 
scatter3(X_l1_data(:, 1), X_l1_data(:, 2), X_l1_data(:, 3),...
    '*', "red"); 
hold on; 
scatter3(X_l3_data(:, 1), X_l3_data(:, 2), X_l3_data(:, 3),...
    'o', "blue"); title('comparison of unit closed ball for l^3 and l^1');
