#Question 1

w0 <- 100 # Initial wealth
p1 <- seq(0,1,0.1)# Different Probabilities of a win
T <- 10000  # Terminal time

# Create empty objects to fill
w1 <- rep(0, T+1)
x1 <- rep(0, T)

# Fill initial wealth
w1[1] = w0
for(pi in p){
for(t in 1:T){
  # A random draw
  u <- runif(1)
  if(u <= 1 - pi){
    x1[t] <- 0
    w1[t+1] <- w1[t] - 1
  } else {
    x1[t] <- 1
    w1[t+1] <- w[t] + 1
  }
}
}
time = 0:T
plot(time, w, type='l')

#Question 2

w2 <- rep(0, T+1)
x2 <- rep(0, T)

# Fill initial wealth
w2[1] = w0

u <- runif(1) #same random shock each period
for(pi in p){
  for(t in 1:T){
    # A random draw
    
    if(u <= 1 - pi){
      x2[t] <- 0
      w2[t+1] <- w2[t] - 1
    } else {
      x2[t] <- 1
      w2[t+1] <- w2[t] + 1
    }
  }
}
time = 0:T
plot(x = time, y = w1, col="blue", type='l',
lines(x = periods, y = w2, col = "red", type = "l"))

#Question 3
w0 <- 100 # Initial wealth
prob = 0.37
nbloop = 10
p3 <- seq(prob, nbloop)# Different Probabilities of a win
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

u <- runif(1) #same random shock each period
for(pi in p3){
  for(t in 1:T){
    # A random draw
    
    if(u <= 1 - pi){
      x3[t] <- 0
      w3[t+1] <- w3[t] - 1
    } else {
      x3[t] <- 1
      w3[t+1] <- w3[t] + 1
    }
    Finalwealth[i]= w3[T +1]
    i = i +1
  }
}
print(Finalwealth)