## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#create matrix 
#create null object
#create inverse of matrix


makeCacheMatrix <- function(store_in_cache = matrix()) {
        create_null_object <- NULL
        set <- function(y) {
                 store_in_cache <<- y
                 create_null_object <<- NULL
        }
        get <- function() store_in_cache
         setsolve <- function(solve) 
		 create_null_object <<- solve
        
		getsolve <- function() create_null_object
        
		list(set = set,
              get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


#check if anything in cache
#if something is available, get the result


cacheSolve <- function(matrix, ...) {
        solution <- matrix$getsolve()
         if (!is.null(solution)) {
                message("getting inverse")
                return(solution)
        }
         data <- matrix$get()
        solution <- solve(data, ...)
         matrix$setsolve(solution)
        solution
}



