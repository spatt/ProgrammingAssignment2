## Cachesolve function will take a matrix as input and will return inverse of that matrix.
## CacheSolve function calls makeCacheMatrix function to create the inverse.

## makeCacheMatrix function will take a matrix as input and find the inverse.
## It stores the inverse in a different environment for reuse.
## makeCacheMatrix function is called by Cachesolve function.

makeCacheMatrix <- function(x = matrix()) {
## x is the input matrix and inv will have the inverse of x
    inv <- NULL
    inv <- solve(x) 
 ## input matrix and inverse is stored in a list.
        orig_list <<- list(orig = x,
                       inverse = inv)
}



## Cachesolve function returns the inverse of the input matrix.
## Cachesolve function calls makeCachematrix function

cacheSolve <- function(x, ...) {
    m <- orig_list$orig
    n <- orig_list$inverse  
## If matrix saved in env is same as the input matrix then return inverse from saved list.
## Else call makecachematrix function to compute inverse for new matrix.
    if(!is.null(m) && (m == x)) { 
    return(n) 
    } 
    makeCacheMatrix(x)   
    return(orig_list$inverse)
}
