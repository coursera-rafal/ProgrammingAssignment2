## input: an invertible square matrix
## function creates a list of functions to:
## - set the value and the inverse of the matrix, 
## - and to get the value and the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## input: the list of functions created by the makeCacheMatrix function
## if getinverse() is NULL, then call get() to get the matrix,
## claculate the inverse and set in cache calling setinverse()
## otherwise, if not NULL, then recall the inverse from cache 

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
