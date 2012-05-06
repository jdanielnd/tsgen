basic.series <- function(x, n=4, loess.span=0.6, start, freq=12) {

  if(!is.wholenumber(n) | n<0) stop("n should be an integer bigger than 0")

  x.length <- length(x)

  ## Gerar Funcao LOESS para essa Serie
  x.loess <- loess(x~seq(1,n*12,length.out=x.length),span=loess.span)

  ## Gerar Volume Basico
  tser <- predict(x.loess, 1:(n*12))
  
  ts(tser, start=start, freq=freq)
  
} 
