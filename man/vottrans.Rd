\name{vottrans}
\alias{vottrans}

\title{
Voter Transfer Analysis
}
\description{
Calculates the voter transfers between two elections
}
\usage{
vottrans(Ro, Rn, v = 1, nw = FALSE)
}

\arguments{
  \item{Ro}{
Matrix containing the results of the first election in total. The first column has to contain the number of eligible voters.
}
  \item{Rn}{
Matrix containing the results of the second election in total. The first column has to contain the number of eligible voters.
}
  \item{v}{
Specifies how the entries are weighted. Version 1 calculates with the percentage values, but weights the residuals with the number of eligible voters per municipalities. Version 2 uses the percentage values without any weight. Version 3 calculates with absolute figures without any weight. (Default: v=1)
}
  \item{nw}{
Specifies whether the difference in the numbers of eligible voters between the two elections is added to the nonvoters of the second election or not. (Default= FALSE)
}
}


\value{
Returns a matrix containing the percentage of voter shifts. The voter shifts from party 1 to party 2 are found in entry a_1,2
}

\author{
Michael Gampmayer
}

\examples{
data(X1) ## loading the example data of 2009

##    [,1]	 [,2]	 [,3]	[,4]	 [,5]	[,6]	[,7]
##  101131	21491	16006	7480	7095	2483	46576
##    4388	 1463	 1487	 290	 128	  80	  940
##    2658	  744	  940	 250	 124	  79	  521
##    1728	  484	  661	 154	  26	  25	  378   
##     ... 	  ...	  ...	 ...      ... 	 ...	  ...
 
data(Y1)  ## loading the example data of 2013

##    [,1]	 [,2] 	[,3]	 [,4]	[,5]   [,6]	[,7]
##   99723	15204	13755	9402	16147	4752	40463
##    4396	  979	 1240	 373	  479	 196	 1129
##    2744	  402	  771	 300	  497	 150	  624
##    1702	  308	  594	 195	  129	  71	  405
##     ...	  ...	  ...     ...	  ...	 ...      ...


vottrans(X1,Y1,v=1)  ## calculating the estimated voter transitions


##       [,1]           [,2]            [,3]           [,4]        [,5]             [,6]
##  5.171150e-01   -6.904960e-18   1.051492e-01   1.992879e-02    8.083999e-02   2.769671e-01
##  0.000000e+00   7.593029e-01   2.750599e-02   8.736985e-02    6.013103e-02   6.569028e-02
## -1.738393e-18  -2.520292e-18   8.263083e-01  -8.776092e-19    4.631644e-02   1.273753e-01
## -1.242397e-17   3.955979e-17  -1.412332e-17   1.000000e+00    5.387532e-18  -1.168024e-16
##  5.551115e-17    0.000000e+00  -8.729910e-18   8.325580e-01    1.674420e-01  -2.108759e-17
##  6.898481e-02    2.959417e-02   1.703398e-02   1.273023e-01    3.641480e-02   7.206699e-01
}

\keyword{regression}
