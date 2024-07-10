## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <<- function(x = matrix(2:5,2,2)){
  inv<<-NULL
  
  setm <- function(y){
    x <<- y
    inv <<-NULL
  }
  
  getm <- function() x
  
  cacheSolve <- function(z){
     z <- x
    if(!is.null(z)) {
      message("getting cached data")
    }
    inv <<- solve(z)
    getinv <- function()inv
  }
  list(setm = setm, getm = getm,getinv = getinv)
}

