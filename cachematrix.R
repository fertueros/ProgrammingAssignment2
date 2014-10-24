## Put comments here that give an overall description of what your
## functions do
## Sorry for my english
## My function prepare a structure for a matrix. Then, calculate the inverse of matrix with "solve".
## Save the answer in cache of my computer and return that, if I call that.
## I assume that matrix is square and has inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x) {
  
}
