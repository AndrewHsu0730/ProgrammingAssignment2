makeCacheMatrix <- function(m = matrix()) {
  solve(m)
}

makeCacheMatrix(matrix(c(1,2,3,4), nrow = 2, ncol = 2))