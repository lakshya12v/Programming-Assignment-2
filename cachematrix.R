## Please create a Test Matrix
## Then run makeCacheMatrix function on the previously created matrix.

## The function caches the inverse of the matrix you have created.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
}

get <- function() x
sets <- function(solve) m <<- solve
gets <- function() m
list(set = set, get = get,
     sets = sets,
     gets = gets)
}

## This function allows the user to retrieve the inverse of the matrix
## If it has already been calculated before and is cached in memory.
## Otherwise it will calculate Inverse of the new matrix.

cacheSolve <- function(x, ...) {
  m <- x$gets()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$sets(m)
  m

        ## Return a matrix that is the inverse of 'x'
}
