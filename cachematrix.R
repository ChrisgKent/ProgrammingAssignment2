## Functions that cache the inverse of the matrix

## makeCacheMatrix generates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function(){x}
  set_inv <- function(inverse){inv <<- inverse}
  get_inv <- function(){inv}
  list(set = set, get = get, set_inv = set_inv,get_inv = get_inv)
}


