## Welcome to tsgen project!

**tsgen** is an R package that provide tools for time series data generation. It's aimed to generate series of demand, i.e., quantity of a product sold, and than add seasonality and response to price to it.

## Quick start:

### Step 1
Download **tsgen** source from [this](https://github.com/jdanielnd/tsgen/downloads) page and install it:

    $ R CMD INSTALL tsgen_1.0.tar.gz

That's it! You have just installed the package. Follow the next steps to generate some example data.

### Step 2

Generate a basic time series, based on some **key points**. It will use the loess fit to generate points between your key points, interpolating the series.

    library(tsgen)
    kp <- c(100,110,140,130,115)
    bs <- basic.series(kp,start=c(2009,1))

### Step 3

Add **seasonality** to the basic series. This seasonality can be either additive or multiplicative. In this case we will use a multiplicative seasonality, with normal distribution with standard deviation equals to 0.08

    bss <- add.season(bs, s.sd=0.08)

### Step 4

Add a price response to the series, given a price variation and a price elasticity of demand. In this case our prices will be generated via loess interpolation, like we did for the quantity.

    bssp <- add.price(bss, elast=-2, p.vec=c(6,8,7,6))

And that's it! So we have generated 3 objects:

* bs - basic series. It doesn't have seasonality or price response, and will be used as a basis for building other series.
* bss - basic series with seasonality.
* bssp - basic series with seasonality and price response. It's actually a list with the series value with seasonality and price, the generated values for the price and the generated values for elasticity (or a unique value, depending on whether you input on value or a vector to be interpolated).

### Authors and Contributors
This package was idealised by Claudio Duarte and written by @jdanielnd. 

### Support or Contact
Having trouble with the package? Contact @jdanielnd or submit a issue on our page and we’ll help you sort it out.
