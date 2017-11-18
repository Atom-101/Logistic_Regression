clear ; close all; clc

%Load training data from csv file into matrix 'load' 
load = csvread('train.csv');
%Initialize matrix X with input features
X = [load(:,1:end-1)];
%Add quadratic features and bias term to X 
X = manipulate(X);

%Labels of training data
y = load(:,end);

%Load test data into X_t
X_t =csvread('test.csv');
%Add quadratic features and bias term to X_t
X_t = manipulate(X_t);

%Initialize all weights to zero
initialTheta = zeros(columns(X),1);

%[cost, grad] = CostAndGradient(initialTheta, X, y); Find initial cost. Not needed

%Use inbuilt octave/matlab function fminunc to optimize theta
options = optimset('GradObj', 'on', 'MaxIter', 1000);
[theta, cost] = fminunc(@(t)(CostAndGradient(t, X, y)),initialTheta,options);


%Find the probabilities of all test cases
y_t = sigmoid(X_t*theta);

%Convert probabilities to binary output
for i =1:rows(y_t)
	if(y_t(i,1)>=.5)
		y_t(i,1) = 1;
	else
		y_t(i,1) = 0;
	endif
endfor

%Print output to file result.csv
csvwrite('result', y_t);

