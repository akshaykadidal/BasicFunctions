intorduce_Skew <- function (a1, skewcenter= "mean", meanshift){
  a1 <- round(a1)
  a1 <- sort(a1)
  mean_a2 <- round(mean(a1))
  if(skewcenter=="mean"){
    skew_center <- round(mean(a1))
  }else if(skewcenter=="mode"){
    u <- unique(a1)
    skew_center <- u[which.max(tabulate(match(a1, u)))]
  }else{
    skew_center <- skewcenter
    #mean_a2 <- mean(a1) + meanshift
  }
  shift <- meanshift
  while(round(mean_a2 - mean(a1))!= meanshift){
    scale_factor_min <- (skew_center + shift - min(a1))/(skew_center - min(a1))
    
    a_min <- a1[a1<=(skew_center)]
    
    a_min <- a_min-(min(a1))
    
    a_min <- a_min*scale_factor_min
    
    a_min <- a_min+(min(a1)) + sample(x = seq(from = -0.5, to = 0.5, by = 0.01), size = length(a_min), replace = T)
    
    scale_factor_max <- (max(a1) - skew_center)/(max(a1) - skew_center + shift )
    
    a_max <- a1[a1 > (skew_center)]
    
    a_max <- a_max - (max(a1))
    
    a_max <-  a_max*scale_factor_max
    
    a_max <- a_max+(max(a1)) + sample(x = seq(from = -0.5, to = 0.5, by = 0.01), size = length(a_max), replace = T)
    
    a2 <- c(a_min, a_max)
    
    a2 <- round(a2)
    
    mean_a2 <- mean(a2)
    
    if(round(mean_a2 - mean(a1))> meanshift){
      shift = shift - 1
    }else{
      shift = shift + 1
    }
    
    
  }
  
  return (a2)
}
