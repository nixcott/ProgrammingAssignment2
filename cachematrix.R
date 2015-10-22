## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {


## creat in variable

in<- NULL

##sets value of matrix

set<-function(y){
	x<<-y
	in<<-NULL


}


##gets value of matrix

get <-function() x 

setinverse<- function(inverse) in <<- inverse
getinverse<- function() in

list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		in<- x$getinverse()
		##checks to see if inverse has been calculated, if so get cached data
		
		if(!is.null(in)){
			message("getting cached data")
			return(in)
		
		}
		
		## if not then calculate
		data <-x$get()
		in<- solve(data, ...)
		x$setinverse(in)
		in
		
}
