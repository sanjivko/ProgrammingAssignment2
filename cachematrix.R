## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix returns a cahche type object encapsulating
# matrix.  The object is returned as  a list containing various
# functions.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  #Setter for matrix value
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  #Getter for  matrix value
  get <- function(){
    x
  }
  
  # setter the inverse of matrix
  setinverse <- function(i){
    inv <<- i
  }
  
  #getter the inverse of function
  getinverse <- function() inv
  
  #List returned with all the getters/setters 
  list(set= set, get = get, setinverse = setinverse, getinverse = getinverse)
}

# Returns the inverse of the matrix. In case the inverse
# is found in the cache, the cached value is returned. 

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
  inv
}


  
