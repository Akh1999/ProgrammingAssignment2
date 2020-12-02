## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
