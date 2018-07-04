## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
     k <<- y 
  }
  
  get <- function() x 
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function(x){
    m
  }
  list(set =set,get=get,setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinvers
  if(!is.null(m)){
    print("return cached data")
    return(m)
  }
    j <- x$get()
    m <- solve(j)
    x$setinverse(m)
    return(m)
  
}
