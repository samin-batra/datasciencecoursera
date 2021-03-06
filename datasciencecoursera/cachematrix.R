## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                                          i<-NULL
                                          set<-function(y){
                                                x<<-y
                                                i<<-NULL
                                          }
                                          get<-function() x
                                          setInverse<-function(inv=matrix()){
                                                            i<<-inv
                                          }
                                                    
                                          getInverse<-function() i
                                          
                                          list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
          ## Return a matrix that is the inverse of 'x'
          i<-x$getInverse()
          ##print(i)
          if(!is.null(i)){
                  
                return(i)
          }
          ##print(x$get())
          ##print(m)
          k<-solve(x$get())
          x$setInverse(k)
          k
          
}
