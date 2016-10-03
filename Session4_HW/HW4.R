#Question  2

require(MASS)
beta = 0.5
SIGMA = matrix(c(1,beta,beta,1), ncol=2)
MU = c(2.0, 1.0)
print(SIGMA)
N = 50
out <- mvrnorm(N, mu = MU, Sigma = SIGMA)
dim(out)
out[1:10,]
plot(out)
abline(lm(out[,2]~out[,1]), col="red") # regression line (y~x)

# Our data set is named `out`, which we split into y and X
y <- out[, 2]
x= rep(1, 2*N)#I create a vector of 1s
X = matrix(x, nrow= 50, ncol = 2) #I put this vector of 1s in matrix

X[, 2] <- out[, 1] #I put the data in the second column, so now I have
                   #a matrix which has a column of 1s and a column with the data
                   #The rest is pretty much the same thing
print(X)
# Now carry out intermediate calculations
XT = t(X)
XTX = XT%*%X
invXTX = solve(XTX)
XTy = XT%*%y
beta = invXTX %*% XTy
beta

# Now add this line to the plot
plot(out)
abline(lm(out[,2]~out[,1]), col="red") # regression line (y~x)
abline(a=beta[1,1], b=beta[2,1], col="green") # I have to change a and b


#Question 3

beta = 0.5
SIGMA = matrix(c(1,beta, beta, beta, 1, beta, beta, beta, 1), ncol=3)
MU = c(3, 2.0, 1.0)
print(SIGMA)
N = 50
out <- mvrnorm(N, mu = MU, Sigma = SIGMA)
dim(out)
out[1:10,]
plot(out)
print(out)
abline(lm(out[,2]~out[,1]), col="red") # regression line (y~x)

# Our data set is named `out`, which we split into y and X and X
z = out[, 3]
y <- out[, 2]
V1= rep(1, 3*N)   #I create a vector of 1s
X = matrix(V1, nrow= 50, ncol = 3) #I put this vector of 1s in matrix

X[, 2] <- out[, 1] #I put the data of the first variable in the second column,
                   #so now I have
                   #a matrix which has a column of 1s and a column with the data
X[, 3] <- out[, 2] #I put the data of the second variable in the third column,


print(X)
#The rest is pretty much the same thing
print(X)
# Now carry out intermediate calculations
XT = t(X)
XTX = XT%*%X
invXTX = solve(XTX)
XTy = XT%*%y
beta = invXTX %*% XTy
beta

# Now add this line to the plot
plot(out)
abline(lm(out[,2]~out[,1]), col="red") # regression line (y~x)
abline(a=beta[1,1], b=beta[2,1], col="green") # I have to change a and b


#Question 4
SIGMA = matrix(c(1,beta,beta,1), ncol=2)
MU = c(2.0, 1.0)

FindingBeta = function(nvar=2, MU=c(2.0, 1.0),
                     SIGMA = matrix(c(1,beta,beta,1), ncol=2), N=50){

  out <- mvrnorm(N, mu = MU, Sigma = SIGMA)
  y = out[, 1]
  V1= rep(1, nvar*N)   #I create a vector of 1s
  X = matrix(V1, nrow= 50, ncol = nvar) #I put this vector of 1s in matrix

  for(i in 2:nvar){

  X[, i] <- out[, i+1]
  #I put the data of the first variable in the second column,
  #so now I have
  #a matrix which has a column of 1s and a column with the data

  }

  # Now carry out intermediate calculations
  XT = t(X)
  XTX = XT%*%X
  invXTX = solve(XTX)
  XTy = XT%*%y
  beta = invXTX %*% XTy
  beta

  ##### Comment
  # better to return beta, then print, or vice versa.
  return(print(beta))
}
FindingBeta
FindingBeta(2, MU, SIGMA, N)
FindingBeta(2, MU, SIGMA, N)
