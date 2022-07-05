## The two functions are created to calculate the inverse of a matrix and save the runtime at the same time.

## The makeCacheMatrix function is written to create a special matrix caching its inverse.

makeCacheMatrix <- function(m = matrix()) {
        i <- NULL
        set <- function(n) {
                m <<- n
                i <<- NULL
        }
        get <- function() m
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## The cacheSolve function returns the inverse of the matrix from the above function. If the inverse has been calculated, the inverse from the cache will be returned.
## Otherwise, the function will calculate the inverse of the data and set the inverse value in the cache.

cacheSolve <- function(m, ...) {
        i <- m$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- m$get()
        i <- solve(data, ...)
        m$setinverse(i)
        i
}
