## Here are two functions used to cache a matrix and also its inverse. This can
## significantly improve performance for large matrices.

## This function is used to cache the matrix and its inverse 

makeCacheMatrix <- function(x = matrix()) {
        
 ## y and z are global variables and hence their values are in cache  
        
        y <<- x
 ## solve function is used to find the inverse of the matrix 
        
        z <<- solve(x) 
        
        
}


## This function retrieves the inverse of a matrix from cache, if the matrix 
## supplied is identical to the matrix in cache

cacheSolve <- function(x) {
            
        
        if (is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)) 
            
               { print("This is the cached inverse")
                z
        }
        
        
        else {
                z <- solve(x)
              print("This is the calculated inverse")
              print(z)
        }

}


