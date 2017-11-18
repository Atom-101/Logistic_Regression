function[cost, grad] =  CostAndGradient(initialTheta, X, y)
m = rows(X);
h = sigmoid(X*initialTheta);

cost = (1/m)*(-1*y'*log(h)-(1-y')*log(1-h));


grad = zeros(rows(initialTheta));
grad = (1/m)*((h-y)'*X)';

end