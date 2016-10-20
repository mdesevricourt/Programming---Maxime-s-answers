#Homework 5

#Built In functions

x= 3
y=4
append(x,y) #adds what y contains at some place in x, by default, it is added at the end


x= matrix(seq(1,100), 10)
print(x)
c(x) #adds all arguments together into a single vector. Here the matrix x is reduced to a vector

cat(x, sep="\t") #write all the data in the first argument into the file specified
                 #in the second one, using the separator specified. By default, it
                 #overwrites the file. Here the separator is a tabulation


diff(x) #substract, for each row, two consecutive terms to each other and gives the result
        #the firs argument is the vector you want to use, the second is how far apart
        #are the elements you want to substract and I have no clue on what the third
        #arguments does

gl(5,3) #the first argument is the number of levels. The second one the number of 
        #replication in each level. The function creates a vector of numbers such
        #that each level is replicated the number of times specified

gl(2,1, 100, c("pile","face"))

#matrix manipulation
#a for loop to create a vector, then A and B

V1 = c(rep(0,4))
V2 = c(rep(0,4))
for (i in 1:4) {
  V1[i]=i
}

for (i in 1:4) {
  V2[i]=i+4
}

#using nested loops
A = matrix(V1, 2, byrow = TRUE)
print(A)

B = matrix(V2, nrow = 2, byrow = TRUE)
print(B)

M1 = matrix(rep(0,4), nrow=2)
M2 = M1
k=1
for(i in 1:2){
  for(j in 1:2){
    M1[j,i]=k
    k=k+1
  }
}
h = 5
for(i in 1:2){
  for(j in 1:2){
    M2[j,i]=h
    h=h+1
  }
}

A= M1
B=M2
#using cbind
a1 = c(1,3)
a2 =c(2,4)
b1 = c(5,7)
b2 =c(6,8)
A = cbind(a1,a2)
B= cbind(b1, b2)
print(A)
print(B)
#I create a function that uses the determinant to test for invertiblity
Invertible = function(X){
  if (det(X)==0) {
    print("Désolé, votre matrice n est pas invertible. Pas de chance")
    }  else {
    print("Hallelujah, votre matrice est invertible !")
}
}
Invertible(A)
Invertible(B)

InvA = solve(A)
print(InvA)
A %*% InvA
A %*% solve(A)
InvB= solve(B)

#Statistical function
#A computer cannont generate a random number. We call computer random variables, pseudorandom variables instead.
#Why can't they? Probable because they have no access to dice.

#A computer draw for a continuous uniform distribution. I bet the computer
#converts this result into another distribution the same way we did in class:
#by using the inverted cdf.

data()
?runif()
x = runif(100, 0, 2)
y = rep(0,100)
p=1

for(i in 1:length(x)){
  if(x[i]>p){
    y[i]=1
  } else {y[i] = 0}
}