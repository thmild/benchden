\name{dberdev}
\alias{dberdev}
\alias{pberdev}
\alias{qberdev}
\alias{rberdev}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ 28 benchmark densities from Berlinet/Devroye (1994) }
\description{
Density, distribution function, quantile function and random variate  
generation for the 28 distributions from Berlinet/Devroye (1994).
}
\usage{
dberdev(x,dnum = 1)
pberdev(q,dnum = 1)
qberdev(p,dnum = 1)
rberdev(n,dnum = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dnum}{ number of distribution as in Berlinet/Devroye (1994), Section 3.2. }
  \item{x,q}{ vector of quantiles.  }
  \item{p}{ vector of probabilities.  }
  \item{n}{ number of observations.  }
}

\details{ These functions implement the 28 distributions from Berlinet and Devroye (1994), 
Section 3.2, which are:
%\describe{

 \code{dnum == 1}   "uniform" on [0,1] as in stats-package 

 \code{dnum == 2}   "exponential" as in stats-package 

 \code{dnum == 3}   "Maxwell"

 \code{dnum == 4}   "double exponential"

 \code{dnum == 5}   "logistic" as in stats-package

 \code{dnum == 6}   "Cauchy" as in stats-package

 \code{dnum == 7}   "extreme value" 

 \code{dnum == 8}   "infinite peak"

 \code{dnum == 9}   "Pareto"

 \code{dnum == 10}  "symmetric Pareto" 

 \code{dnum == 11}  "normal" as in stats-package  

 \code{dnum == 12}  "lognormal" 

 \code{dnum == 13}  "uniform scale mixture" 

 \code{dnum == 14}  "Matterhorn" 

 \code{dnum == 15}  "logarithmic peak"

 \code{dnum == 16}  "isosceles triangle"   

 \code{dnum == 17}  "beta 2,2" as in stats-package 

 \code{dnum == 18}  "chi-square 1" as in stats-package 

 \code{dnum == 19}  "normal cubed"

 \code{dnum == 20}  "inverse exponential"

 \code{dnum == 21}  "Marronite" 

 \code{dnum == 22}  "skewed bimodal" 

 \code{dnum == 23}  "claw"  

 \code{dnum == 24}  "smooth comb"

 \code{dnum == 25}  "caliper"           

 \code{dnum == 26}  "trimodal uniform" 

 \code{dnum == 27}  "sawtooth"

 \code{dnum == 28}  "bilogarithmic peak"
% }
}
\value{
\item{dberdev}{ gives the density, }
\item{pberdev}{ gives the distribution function, }
\item{qberdev}{ gives the quantile function, and }
\item{rberdev}{ generates random deviates.}
}


\references{ A. Berlinet and L. Devroye, "A comparison of kernel density estimates," 
Publications de l'Institut de Statistique de l'Universite de Paris, 
vol. 38(3), pp. 3-59, 1994. 
\url{https://hal.science/hal-03659919}

T. Mildenberger and H. Weinert, "The benchden Package:
  Benchmark Densities for Nonparametric Density Estimation", Journal of
  Statistical Software, vol. 46(14), 1-14, 2012. \url{https://www.jstatsoft.org/v46/i14/}
}
\author{ Thoralf Mildenberger, Henrike Weinert and Sebastian Tiemeyer}

\section{Acknowledgement}{The authors thank Luc Devroye for providing his original implementation
for testing purposes.}
%- \note{ ~~further notes~~ 
%-
%- ~Make other sections like Warning with \section{Warning }{....} ~
%- }
%- \seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
%- ##---- Should be DIRECTLY executable !! ----
%- ##-- ==>  Define data, use random,
%- ##--    or do  help(data=index)  for the standard data sets.

# histogram and true density of "Claw"-distribution
hist(rberdev(1000,dnum=23),breaks=100, main = " ",freq=FALSE)
lines(seq(-3,3,0.01),dberdev(seq(-3,3,0.01),dnum=23),col="blue",lwd=2)
title(paste(nberdev(dnum=23)))

# plot cdf of simulated data and the df of "Matterhorn"-distribution
plot.stepfun(rberdev(100,dnum=14),do.points=TRUE,main="")
lines(seq(-1,1,0.001),pberdev(seq(-1,1,0.001),dnum=14),col="blue")
title(paste(nberdev(dnum=14)))

# plot quantiles of "smooth comb"-distribution
plot(qberdev(seq(0,1,0.01),dnum=24),t="l")
title(paste(nberdev(dnum=24)))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ distribution }% __ONLY ONE__ keyword per line 
\keyword{ datagen }% __ONLY ONE__ keyword per line
\keyword{ nonparametric }% __ONLY ONE__ keyword per line 
