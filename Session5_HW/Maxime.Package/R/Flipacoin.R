#' A Flipacoin Function
#'
#' This function takes as an argument nb, the number of tosses, and give back x, 
#' a series of heads of tails. 
#' @export
#' @examples
#' Flipacoin()

Flipacoin = function(nb=1){
  x = sample(0:1, nb, rep=T)
  for(i in 1:length(x)){
    if(x[i] == 0){
      x[i]="Tails"
      
    } else{
      
    x[i] ="Heads"
    }
    
  }
  
  return(x)
}


