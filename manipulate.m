function X = manipulate(X)
[m,n] = size(X);
for i=1:n
	for j=i:n
		X = [X (X(:,i).*X(:,j))];
	endfor
endfor

X = [ones(m,1) X];		
end
