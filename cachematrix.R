#The function makeCacheMatrix creates a special "matrix", creates a special "matrix" object that can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
        inverse_m <- NULL

        set <- function(y) {                               #set the value of the matrix 
                x <<- y
                inverse_m <<- NULL
        }

        get <- function() x                                #get the value of the matrix     
        setinverse <- function(solve) inverse_m <<- solve  # set the value of the inverse matrix
        getinverse <- function() inverse_m                 #get the value of the inverse matrix
        
        list(set = set, get = get,                         #insert into the cache list
             setinverse = setinverse,
             getinverse = getinverse)
}



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {


        inverse_m <- x$getinverse()

        if(!is.null(inverse_m)) {                         #check if the inverse has already been calculated
                message("getting cached data")
                return(inverse_m)                         #if yes - return cached matrix
        }
        
        data <- x$get()
        inverse_m <- solve(data, ...)                     #calculates inverse of matrix
        
        x$setinverse(inverse_m)                           #save the cache
        inverse_m                                         #Return a matrix that is the inverse of 'x'
}

