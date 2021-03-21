## The functions that I introduce there are supposed to make an object that keeps the matrix and then cashes the inverse of it. makeCacheMatrix is here to create matrix that is a list that contains a function. 
## this function set and get the value of matrix and the inverse of it. Firstly it sets the value of the matrix, then it gets its value, sets the velue of inverse and gets the value of it.

makeCacheMatrix <- function(x = matrix()) {
 variable <- NULL
  set <- function(n) {
       x <<- n
       variable <<- NULL
  }
  get <- function() x
  sinverse <- function(inverse) variable <<- inverse
  ginverse <- function() variable
  list( set =  set ,
       get = get,
        sinverse =  sinverse,
       ginverse = ginverse)
}

## Then there is a function that give us the inverse og the matrix, that was made by previous function. Supposing that matrix did not change and inverse has been already computed, thtis function give us the extraction of what has been cashed.

cacheSolve <- function(x, ...) {
        r <- x$getinverse()
   if (!is.null(r)) {
          message("getting cached data")
          return(r)
   }
   data <- x$get()
   r <- solve(data, ...)
   x$setinverse(r)
   r
}


