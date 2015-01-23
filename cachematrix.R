## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL # setting initial value to null
  setMat<-function(y){
  x<<-y
  m<<-NULL
}
getMat<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(setMat=setMat, getMat=getMat,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("This is cached data")
      return(m)
    }
    matrix <- x$getMat() 
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
