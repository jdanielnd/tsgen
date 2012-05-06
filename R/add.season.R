add.season <- function(tser, s.mean=1, s.sd=0.1, add=FALSE) {

  freq <- frequency(tser)
  n <- length(tser)/freq

  saz <- rep(rnorm(freq,s.mean,s.sd),n)
  
  if(add) {
    tser+saz
  } else {
    tser*saz
  }
  
}
