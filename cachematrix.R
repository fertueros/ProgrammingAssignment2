## Put comments here that give an overall description of what your
## functions do
## Sorry for my english
## My function prepare a structure for a matrix. Take the answer of the inverse when is calculated.


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
## Save the answer in cache of my computer and return that, if I call that.
## Calculate the inverse of matrix with "solve".
## I assume that matrix is square and has inverse.
cacheSolve <- function(x) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m  
}
