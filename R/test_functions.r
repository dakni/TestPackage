##' this functions just adds two
##'
##' there are no specific detail
##' @title add two
##' @param y a numeric
##' @return a numeric
##' @author Daniel Knitter
##' @export
add_2 <- function(y){
  z <- y + 2
  return(z)
  }

##' this functions just adds three
##'
##' there are no specific details
##' @title add three
##' @param y a numeric
##' @return a numeric
##' @author Daniel Knitter
##' @export
add_3 <- function(y){
  z <- y + 3
  return(z)
  }

##' this functions return the second column
##'
##' there are no specific details
##' @title return second column
##' @param y a thing suitable to be used with dplyr
##' @return a column
##' @import magrittr
##' @import dplyr
##' @author Daniel Knitter
##' @export
selsecond <- function(y){
  y %>%
    select_(2) %>%
    return
}

