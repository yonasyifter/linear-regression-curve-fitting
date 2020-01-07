#Computational Methods Group Assignment one

#### ______GROUP-MEMBERS_______ ####

####_______               Name_________________   id
####_______       1 yonas yifter ________________209/09
####_______       2 tensay g/tsadik______________111/09
####_______       3 Kibrom Takelle______________ 043/09
####_______       4 weldegebreal bilad___________208/09
####_______       5 Zeberhe Hagos ________________210/09
#lets compute the parameters in this function
# the equation for the linear regressor with one variable is Y=theta *X
# so lets compute the theta or the optimum slope for the data
#use code vectorization on the matrix operations, rather than explicit summation or looping.
#here we need the concept of gradient descent i.e the derivative to find the 
#optimum slope
# so after several iteration we may reach at the optimum
# decide the learning rate alpha
function [theta] = computeParameters(X, Y,theta,iter,alpha)
n=length(Y);
for i=1:iter
  delta = (1/n)*sum(X.*repmat((X*theta - Y), 1, size(X,2)));
  theta = (theta' - (alpha * delta))';
  endfor
endfunction
