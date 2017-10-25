## run testCache() to generate 2 random matrices 
## and see the chaching functions in action

testCache <- function (){
  print("Create 3x3 matrix")
  matrix1 <- matrix(rnorm(9),3,3)
  print("matrix1 <- matrix(1:9,3,3)")
  print(matrix1)
  
  invisible(readline(prompt="Press [enter] to continue"))
  
  print("matrix1cache <- makeCacheMatrix(matrix1)")
  matrix1cache <- makeCacheMatrix(matrix1)
  
  print("matrix1cache$get()")
  print(matrix1cache$get())
  
  print("matrix1cache$getinverse()")
  print(matrix1cache$getinverse())
  
  invisible(readline(prompt="Press [enter] to continue"))
  
  print("cacheSolve(matrix1cache)")
  print(cacheSolve(matrix1cache))
  
  invisible(readline(prompt="Press [enter] to continue"))
  
  print("Now check getinverse() again")
  print("matrix1cache$getinverse()")
  print(matrix1cache$getinverse())
  
  invisible(readline(prompt="Press [enter] to continue"))
  
  print("and run cacheSolve() again to confirm that the inverse is cached")
  print("cacheSolve(matrix1cache)")
  print(cacheSolve(matrix1cache))
  
  invisible(readline(prompt="Press [enter] to continue"))
  
  print("Lets try 1000 x 1000 matrix and calculate time diferrence between start and finish of the function before and after storing in cache")
  
  matrix2 <- matrix(rnorm(1000*1000),1000,1000)
  print("matrix2 <- matrix(rnorm(1000*1000),1000,1000)")
  matrix2cache <- makeCacheMatrix(matrix2)
  print("matrix2cache <- makeCacheMatrix(matrix2)")
  
  
  invisible(readline(prompt="Press [enter] to continue"))
  
  start.time = Sys.time()
  cacheSolve(matrix2cache)
  print("cacheSolve(matrix2)")
  dur = Sys.time() - start.time
  print(dur)
  
  invisible(readline(prompt="Press [enter] to continue"))

  start.time = Sys.time()
  cacheSolve(matrix2cache)
  print("cacheSolve(matrix2)")
  dur = Sys.time() - start.time
  print(dur)
  
}
