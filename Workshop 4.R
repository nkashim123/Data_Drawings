x <- 1
while(x %% 5 == 0 | x %% 6 == 0 | x %% 7 == 0){
  x <- x + 1
}
print(paste('The lowest number that is a factor of 5, 6, 7 and 8 is ', x, sep = ""))


y <- 0.999
while (y >= 0.5) {
  y <- y ^ 2
}
print(y)
#This loop squares the value y until is less than 0.5

x <- 0.999
y <- 0
while(x >= 0.5){
  x <- x ^ 2
  y <- y + 1
}
print(paste(c('If you square 0.999 ', 
              y,
              ' times, you get a value of ', 
              x )
            , collapse = ''))
#The above loop will loop until the value of x is smaller than 0.5, and then print the number of loops required

power <- function(x){
  y <- x ^ 2
  z <- x ^ 3
  return(c( y, z))
}
power(50)
#Here we are creating our own function power, which when assigned a value will return the value squared and then cubed

month_converter <- function(month){
  months <- c('January','February','March',
              'April','May','June',
              'July','August','September',
              'October','November','December')
  return(grep(pattern = month, x = months))
}
#The code above creates a vector of the months, and then returns the numerical value of each month as a position of the vector.

month_converter <- function(month_input){ 
  months <- c('January','February','March',
              'April','May','June',
              'July','August','September',
              'October','November','December')
  output <- vector()
  for(i in month_input){
    output[i] <- grep(pattern = i, x = months)
  }
  return(output)
}
# the above code serves a similar function, but instead creates an empty vector, output, then it is subset with the values of positions in the vector months. it will then return this output

bird <- function(x){
  y <- gsub(pattern = '$', x = x, replacement = ' is the word')
  return(y)
}
#This function will take the vector bird, and using the $ to indicate the end of the value, will append the words "is the word" to the end

bird <- function(x, y = ' is the word'){
  z <- gsub(pattern = '$', x = x, replacement = y)
  return(z)
}
#this serves the same purpose but it will append is the word by default unless another input is provided

fib <- function(x){ # define a function called fib that takes an input of x
  sequence <- c(x, x) # create a sequence where the first two values are x
  for(i in 3:20){ # loop over 3 to 20 
    sequence[i] <- sequence[i - 1] + sequence[i - 2] # save each position as the sum of the previous two (in positions 3 to 10)
  }
  return(sequence) # return the sequence
}
# this function above creates a function which will recreate the fibonacci sequence

powers2 <- function(x, y){
  output <- vector()
  for(i in 1:y){
    output[i] <- x ^ i
  }
  return(output)
}
# this function takes two inputs , x and y , and will square each value by the range of 1 to y

list_out <- list()
for(i in 1:10){
  list_out[[i]] <- powers2(4, i)
}
# here we create a list with the list() function, which assigns the inputs of powers2 to a new list, with the second input being in the range of 1-10 each iteration

sumlow <- function(x){ #creates a new function sumlow
  # this splits x into its digits and then changes from a list to a vector (because strsplit outputs a list)
  y <- unlist(strsplit(as.character(x),"")) #You will have had to use google to find the strsplit() function
  y <- as.numeric(y) # changes to numeric
  y <- sort(y, decreasing = F)# decreasing can be changed from T to F in order to arrange numbers from decreasing to increasing
  return(y)
}

sumlow(6749)
#This function above turns a number into a vector that contains the numbers,and then can list them in ascending or descending order.



