function X = manipulate(X)
%Obtain size of matrix
[m,n] = size(X);
%Multiply every  feature in X with itself and remaining features
%and append it these columns to end of X 
for i=1:n
	for j=i:n
		X = [X (X(:,i).*X(:,j))];
	endfor
endfor

%Add a column of ones to the beginning of X for bias term
X = [ones(m,1) X];		
end
