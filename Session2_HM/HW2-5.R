#Question 5
w0 <- 100 # Initial wealth
p = seq(0, 1, 0.1)
pi = 0.37
nbloop = 100

T <- 10000  # Terminal time

# Create empty objects to fill
w1 <- rep(0, T+1)
x1 <- rep(0, T)

# Fill initial wealth
w1[1] = w0
w3 <- rep(0, T+1)
x3 <- rep(0, T)
Fin= rep(0, nbloop)
i = 1
# Fill initial wealth
w3[1] = w0


for(i in 1:nbloop){
  for(t in 1:T){
    # A random draw
    u <- runif(1) 
    if(u <= 1 - pi){
      x3[t] <- 0
      w3[t+1] <- w3[t] - 1
    } else {
      x3[t] <- 1
      w3[t+1] <- w3[t] + 1
    }
   
  }
  Fin[i]= w3[T+1]
  i = i +1
}
print(Fin)

Average = mean(Fin)
