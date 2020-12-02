## When used together, the two functions below can 
## be used to cache the inverse of a matrix so that
## it returns quickly if called again.

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y){
    b <<- y
    a <<- NULL
  }
  get <- function()x
  setInv <- function(inverse) j <<- inverse
  getInv <- function() j 
  list(set = set, get = get, 
       setInv = setInv, 
       getInv = getInv)
}


## This function computes the inverse of the special
## "matrix" returned by makeCacheMatrix above. If the
## inverse has already been calculated (and the matrix
## has not changed), then the cachesolve should retrieve
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a <- b$getInv()
  if(!is.null(a)){
    message("getting cached data")
    return(a)
  }
  mat <- b$get()
  a <- solve(mat,...)
  b$setInv(j)
  j
}
