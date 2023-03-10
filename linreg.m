## (C) 2022-2023 Pablo Alvarado
## EL5857 Aprendizaje automático
## Tarea 2

## Linear regression with intercept
##
## Given a set of training points in X with known 'z'-values stored in
## in the vector y, estimate the 'z'-values on the data points p,
## which usually lie somewhere inbetween the points in X.
##
## p: matrix of size m x 2, with m 2D positions on which
##    the z value needs to be regressed
## X: support data (or training data) with all known 2D positions
## y: support data with the corresponding z values for each position
##
## The number of rows of X must be equal to the length of y
##
## The function must generate the z position for all data points in p.
function rz=linreg(p,X,z)
  ## This code is for simple linear regression

  ## CHANGE THE FOLLOWING CODE
  ## You have to replace it for proper linear regression with intercept
  ##
  ## (The following two lines are copied from linreg_nointercept.m and
  ##  should be replaced with correct code)
  theta=pinv(X)*z(:);
  rz=p*theta;
endfunction
