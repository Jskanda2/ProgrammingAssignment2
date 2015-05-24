## Here we are creating two functions that will create object that stores the matrix
## and cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        i <<- NULL
        
        ##set the value of the matrix
        set <- function(y){
                x <<- Y
                i <<- NULL
        }
        ##get the value of the matrix
        get <- function() x
        
        ##set the value of inverse of the matrix
        setinverse <- function(inverse) i <<- inverse
        
        ##get the value of inverse of the matrix
        getinverse <- function() i
        
        ## creates a list containing a function
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated, then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data.")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
}
