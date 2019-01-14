## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function(){
    x
  }
  
  setinverse <- function(i){
    inv <<- i
  }
  getinverse <- function() inv
  
  list(set= set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if (!is.null(inv)){
    print ("Returning cached value")
    return(inv)
  }
  data <- x$get()
  print( data)
  inv <- solve(data)
  x$setinverse(inv)
}
