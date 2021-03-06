## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	## Initialize the variable m for the final answer
	m <- NULL

	## Set the matrix to be inversed
	set <- function(y){
		x <<- y
		m <<- NULL
	}

	## Get the matrix to be inversed
	get <- function() x
	
	## Set the inverse of the input matrix
	setinverse <- function(solve){
		m <<- solve
	}

	## Get the inverse of the input matrix
	getinverse <- function(){
		m
	}

	## Return the list of the above four functions
	list(set = set, get = get, setinverse = setinverse, 
		getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Get the matrix m that is the inverse of 'x'
	m <- x$getinverse()

	## If m is already set (not NULL), return m
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}

	## If m is NULL, get the input matrix x and call the solve function
	## to calculate the inverse of x
	data <- x$get()
	m <- solve(data,...)

	## Cache the inverse of input matrix m here and return m
	x$setinverse(m)
	m
}
