## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL ### cleans m
        set <- function(y) { ### 1. function for set
                x <<- y 
                m <<- NULL
        }
        get <- function() x ### 2. function for get
        setsolve <- function(solve) m <<- solve ### 3. function for setsolve
        getsolve <- function() m ### 4. function for getsolve
        list(set = set, get = get,  #### results of makeCacheMatrix = list of 4 functions as shown before
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve() ### searches from result list of cache matrix the getsolve function, passes to m
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        } ### if getsolve was already calculated, therefore result is not Null, data from Cache is being used, if Null, solve(x)
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}



