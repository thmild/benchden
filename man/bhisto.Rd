\name{bhisto}
\alias{bhisto}
\alias{nhisto}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Some properties of 4 histogram benchmark densities}
\description{
Names and breakpoints for the 4 histogram benchmark distributions from Rozenholc/Mildenberger/Gather (2010).
}
\usage{
bhisto(dnum = 1)
nhisto(dnum = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dnum}{ number of distribution. }
}

\details{ These functions implement the 4 histogram benchmark distributions 
from Rozenholc/Mildenberger/Gather (2010). Defined as the following mixtures of uniform distributions:
%\describe{

 \code{dnum == 1}   5 bin regular histogram:
 \deqn{0.15*U[0,0.2] + 0.35*U(0.2,0.4] + 0.2*U(0.4,0.6] +0.1*U(0.6,0.8]+ 0.2*U(0.8,1.0]} 

 \code{dnum == 2}   5 bin irregular histogram:
 \deqn{0.15*U[0,0.13] + 0,35*U(0.13,0.34] + 0.2*U(0.34,0.61]
+0.1*U(0.61,0.65] + 0.2*U(0.65,1.0]} 
 \code{dnum == 3}   10 bin regular histogram:
\deqn{0.01*U[0,0.1] + 0.18*U(0.1,0.2] + 0.16*U(0.2,0.3]}
\deqn{+0.07*U(0.3,0.4] + 0.06*U(0.4,0.5] + 0.01*U(0.5,0.6]}
\deqn{+0.06*U(0.6,0.7] + 0.37*U(0.7,0.8] + 0.06*U(0.8,0.9]}
\deqn{+0.02*U(0.9,1.0]}
 \code{dnum == 4}   10 bin irregular histogram:
\deqn{0.01*U[0,0.02] + 0.18*U(0.02,0.07] + 0.16*U(0.07,0.14]}
\deqn{+0.07*U(0.14,0.44] + 0.06*U(0.44,0.53] + 0.01*U(0.53,0.56]}
\deqn{+0.06*U(0.56,0.67] + 0.37*U(0.67,0.77] + 0.06*U(0.77,0.91]}
\deqn{+0.02*U(0.91,1.0] }
where \eqn{U[a,b]} denotes the uniform distribution on \eqn{[a,b]}.
                 
% }
}

\value{
\item{nhisto}{gives the name of the distribution (the same as \code{name} in \code{histo}).}
\item{bhisto}{gives the vector of break points (the same as \code{breaks} in \code{histo}).} 
}


\references{ 
T. Mildenberger and H. Weinert, "The benchden Package:
  Benchmark Densities for Nonparametric Density Estimation", Journal of
  Statistical Software, vol. 46(14), 1-14, 2012. \url{https://www.jstatsoft.org/v46/i14/}

Y. Rozenholc, T. Mildenberger and U. Gather (2010), "Combining Regular and Irregular Histograms by Penalized Likelihood", Computational Statistics and Data Analysis, 54, 3313-3323. \doi{10.1016/j.csda.2010.04.021}
Earlier version including explicit definition of the densities: \doi{10.17877/DE290R-15901}
}
\author{ Thoralf Mildenberger}

%\section{Acknowledgement}{The authors thank Luc Devroye for providing his original implementation
%for testing purposes.}
%- \note{ ~~further notes~~ 
%-
%- ~Make other sections like Warning with \section{Warning }{....} ~
%- }
%- \seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
%- ##---- Should be DIRECTLY executable !! ----
%- ##-- ==>  Define data, use random,
%- ##--    or do  help(data=index)  for the standard data sets.

# name string of 5 bin regular histogram
nhisto(dnum=1)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ distribution }% __ONLY ONE__ keyword per line 
\keyword{ datagen }% __ONLY ONE__ keyword per line
\keyword{ nonparametric }% __ONLY ONE__ keyword per line 
