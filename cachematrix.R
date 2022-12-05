## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
##A function that creates a special "matrix" object that can cache its Inverse
makeCacheMatrix <- function(x = matrix()) {
  dr <- NULL
  set <- function(y) {
    x <<- y
    dr <<- NULL
  }
  get <- function()x
  setInverse <- fuction(Inverse) dr<<- Inverse
  getInverse <- function()dr
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

##Apair of functions that cache the inverse of a matrix
##This function computes the inverse of the special "matrix" 
##returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
  dr <- x$getInverse()
  if(!is.null(dr)) {
    message("getting cached data")
    return(dr)
  }
  data <- x$get()
  dr <- solve(data)
  x$setInverse(dr)
  dr
}