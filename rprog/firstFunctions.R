add2 <- function(x,y){
    x+y
}

above10 <- function(x){
    use <- x > 10
    x[use]
}

above <- function(x,n = 10){
    use <- x > n
    x[use]
}

columnmean <- function(x, removeNA = TRUE){
    
    # number of columns in X matrix
    nc <- ncol(x) 
    
    # empty vector to store mean of each column
    means <- numeric(nc) 
    
    # loop over columns and calculate mean
    for(i in 1:nc){
        means[i] = mean(x[,i], na.rm = removeNA)
    }
    
    # return (last exp evaluated gets returned)
    means
    
}

z <- 10
freevar <- function(x,y){ x + y + z }