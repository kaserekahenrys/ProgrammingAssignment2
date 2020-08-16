## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  invx <- NULL
  set <- function(y){
    x <<- y
    invx <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) invx <<- solveMatrix
  getInverse <- function() invx
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invx <- x$getInverse()
  if(!is.null(invx)){
    message("getting cached data")
    return(invx)
  }
  data <- x$get()
  invx <- solve(data)
  x$setInverse(invx)
  invx 
}
