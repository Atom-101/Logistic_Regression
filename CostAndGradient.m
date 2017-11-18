function[cost, grad] =  CostAndGradient(initialTheta, X, y)

%Calculate number of rows
m = rows(X);
%Calculate output for current weights
h = sigmoid(X*initialTheta);

%Calculate cost
cost = (1/m)*(-1*y'*log(h)-(1-y')*log(1-h));

%Initialize and calculate derivative of cost with respect to all weights
grad = zeros(rows(initialTheta));
grad = (1/m)*((h-y)'*X)';

end
