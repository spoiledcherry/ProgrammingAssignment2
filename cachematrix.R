## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
                }
        get <- fucntion() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ## create a matrix that can cache its inverse
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getinverse() 
        if(!is.null(i)) { ## check if the inverse has already been calculated
                message("getting cached matrix")
                return(i) ## get the inverse of matrix and skip calculation
                }
        matrix <- x$get()
        i <- solve(matrix, ...) ## calculate the inverse of the matrix
        x$setinverse(i)
        i
}
