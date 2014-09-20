#The function makeCacheMatrix creates a special "matrix", creates a special "matrix" object that can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL

#set the value of the matrix        
        set <- function(y) {
                x <<- y
                m <<- NULL
        }

#get the value of the matrix        
        get <- function() x

#set the matrix inversion
        setinverse <- function(solve) m <<- solve

#get the matrix inversion
        getinverse <- function() m
        
#insert into the cache list
        list(set = set, get = get,
             setinverse = setinverse,
             setinverse = setinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
