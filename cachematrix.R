## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Use vapply to apply solve to all the matrix values and return matrix.
makeCacheMatrix <- function(x = matrix()) {
    ## stores the original matrix for comparison
    origm <<- x
    
    ## stores the inverse of the matrix
    invm <<- as.matrix(sapply(x, solve))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  ## check if there is a cached matrix
  if (is.null(invm)) {
    ## Store current matrix before applying inverse
    origm <<- x
    invm <<- as.matrix(sapply(x, solve))
    return(invm)
  }
  
  ## check if the current matrix is the same as previous 
  if (identical(x, origm)) {
    return(invm)  
  }
  
  invm <<- as.matrix(sapply(x, solve))
}