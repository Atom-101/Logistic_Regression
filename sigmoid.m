function g =sigmoid(z)
%Calculate the output by passing every term in z through the sigmoid function
g = 1./(1+e.^((-1).*z));
end
