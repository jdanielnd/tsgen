add.price <- function(tser, elast, random.price=FALSE, inf.limit=NULL, sup.limit=NULL, p.vec=NULL) {

  if(random.price & (is.null(inf.limit) | is.null(sup.limit))) stop("inf.limit and sup.limit should be informed when price is random")
  if(!random.price & is.null(p.vec)) stop("p.vec should be informed when price isn't random")

  freq <- frequency(tser)
  n <- length(tser)/freq
  
  ## Geracao dos Precos
  if(random.price) {
    price <- runif(n*freq,inf.limit,sup.limit)
  } else {
    ## Gerar Preços Opção 2 --> Tendência
    loess.price <- loess(p.vec~seq(1,n*freq,length.out=length(p.vec)),span=0.6)
    price <- predict(loess.price,1:(n*freq))
  }
  
  ## Geracao das Elasticidades
  if(length(elast)>1) {
    loess.elast <- loess(elast~seq(1,n*freq,length.out=length(elast)),span=0.6)
    elast <- predict(loess.elast,1:(n*freq))
  }
  
  ## Gerando Resposta ao Preco
  rp <- vector("numeric",length(price))
  rp[1] <- 0
  rp[-1] <- ((price[-length(price)] - price[-1])/price[-length(price)])*elast

  ## Gerando Volume Basico c/ Sazonalidade e Resposta ao Preco
  vbsazrp <- tser*(rp + 1)
  
  list(ts=vbsazrp, price=price, elast=elast)
  
}
