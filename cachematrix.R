## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## MakeCacheMatrix is a function that create a special Matrix object
## that take a matrix as an input and cache an inversed matrix object
## The caller interact with the cached matrix via setters and getters method 
## set method - sets the input matrix to be inversed
## get method - returns the input matrix function
## setInversedMtx - sets the cache inversed matrix object 
## getInversedMtx - returns the cache inversed matrix object

makeCacheMatrix <- function(x = matrix()) {
     
      mtxInvsed <- NULL
      
      set <- function(y) {
             x <<- y
             mtxInvsed <<- NULL 
      }
  
      get <- function() {x}
      setInversedMtx <- function(inversedMatrix) mtxInvsed <<- inversedMatrix
      getInversedMtx <- function() { mtxInvsed}
      
      list(set = set, get = get,
           setInversedMtx = setInversedMtx,
           getInversedMtx = getInversedMtx)
}


## Write a short comment describing this function
## cacheSolve function takes a matrix object as an input parameter 
## and returned an inversed version of the matrix from the object's own cache if one exists
## otherwise,  it will solve for the inversed version of the matrix, 
## store it back in the matrix object's cache before returning it as the return value 
## of the function.
##

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    mtxCache <- x$getInversedMtx()
    if (!is.null(mtxCache)) { 
       message("getting cached data")
       return (mtxCache) 
    } 
    
    data <- x$get()
    mtxCache <- solve(datam, ...)
    x$setInversedMtx(mtxCache)
    mtxCache

}





