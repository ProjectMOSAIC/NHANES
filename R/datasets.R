#' NHANES 2009-2012 with adjusted weighting
#' 
#' This is survey data collected by the US National Center for Health Statistics
#' (NCHS) which has conducted a series of health and nutrition surveys since the
#' early 1960's. Since 1999 approximately 5,000 individuals of all ages are
#' interviewed in their homes every year and complete the health examination
#' component of the survey. The health examination is conducted in a mobile
#' examination centre (MEC).
#' 
#'
#' @docType data
#' @name NHANES
#' @usage data(NHANES)
#'
#'
#' @format a data frame with 10000 observations of 75 variables.
#'
#' @details
#'
#' The NHANES target population is “the non-institutionalized civilian resident
#' population of the United States”.  Our dataset is derived from the data
#' available for the 2009-2010 and 2011-2012 sample years and has approximately
#' 10,000 observations (people) and about 70 variables.  
#' 
#' NHANES, (American National Health
#' and Nutrition Examination surveys), use complex survey designs (see
#' http://www.cdc.gov/nchs/data/series/sr_02/sr02_162.pdf) that oversample certain
#' subpopulations like racial minorities. Naïve analysis of the original NHANES
#' data can lead to mistaken conclusions. The percentages of people from each
#' racial group in the data, for example, are quite different from the way they
#' are in the population.  We have resampled the NHANES data to undo these
#' oversampling effects. Our data can therefore be treated, for educational purposes, 
#' as if it were a simple random sample from the American population.  
#' A list of the variables in
#' the data set follows with variable descriptions and links to the original
#' NHANES documentation.
#'
#' 
#'
#' @section Disclamer:
#' Please note that this data set is derived from the NHANES
#' database.  It has been adapted for educational purposes.  As such, it is NOT
#' suitable to use as a research-database.  For research purposes you should
#' download original data files from the NHANES website and follow the analysis
#' instructions given there. Further details and relevant documentation can be
#' found on the NHANES websites \url{http://www.cdc.gov/nchs/nhanes.htm},
#' \url{http://wwwn.cdc.gov/nchs/nhanes/search/nhanes11_12.aspx}, and 
#' \url{http://wwwn.cdc.gov/nchs/nhanes/search/nhanes09_10.aspx}.
#'
#' @section Variables:
#'
#' The NHANES2009-2012 dataset contains the following variables:
#'
#' Demographic Variables
#' \describe{
#' 	\item{ID}{ID number}
#' 	\item{Gender}{Gender (sex) of study participant	coded as \code{male} or \code{female}}
#' 	\item{Age}{Age in years at screening of study participant.  Note:  Subjects 80 years or older were
#' 	  recorded as 80.}
#' 	\item{AgeDecade}{Categorical variable derived from age with levels \code{0-9}, \code{10-19}, \dots \code{70+}}	
#' 	\item{AgeMonths}{Age in months at screening of study participant.  Reported
#' 	  for participants aged 0 to 79 years for 2009 to 2010 data Reported for
#' 	  participants aged 0 to 2 years for 2011 to 2012 data.} 
#' 	\item{Race1}{Reported race of study participant: Mexican, Hispanic, White, Black, or Other.}
#' 	\item{Race3}{Reported race of study participant, including non-Hispanic Asian category:
#' 		Mexican, Hispanic, White, Black, Asian, or Other}
#' 	\item{Education}{Educational level of study participant Reported for participants aged 20 years or older.
#' 		One of \code{8thGrade}, \code{9-11thGrade}, \code{HighSchool}, \code{SomeCollege}, or \code{CollegeGrad}.}
#'     \item{MaritalStatus}{Marital status of study participant.  Reported for participants aged 20 years or older.
#' 	  One of \code{Married}, \code{Widowed}, \code{Divorced}, \code{Separated}, \code{NeverMarried}, or \code{LivePartner} (living with partner).}
#' 
#' 	\item{HHIncome}{Total annual gross income for the household in US dollars.  One of 
#'       \code{0 - 4999}, \code{5000 - 9,999}, 
#' 	  \code{10000 - 14999}, \code{15000 - 19999}, \code{20000 - 24,999},
#' 	  \coede{25000 - 34999}, \code{35000 - 44999}, \code{45000 - 54999}, \code{55000 - 64999}, \code{65000 - 74999},
#' 	  \code{75000 - 99999}, or \code{100000 or More}.}
#' 	\item{HHIncomeMid}{Numerical version of \code{HHIncome} derived from the middle income in each category}
#' 	\item{Poverty}{A ratio of family income to poverty guidelines.  Smaller numbers indicate more poverty}
#' 	\item{HomeRooms}{How many rooms are in home of study participant (counting kitchen but not bathroom).
#' 	  13 rooms = 13 or more rooms.}
#' 	 \item{HomeOwn}{One of \code{Home}, \code{Rent}, or \code{Other} indicating whether 
#' 	 the home of study participant or someone in their family is owned, rented or occupied 
#' 	 by some other arrangement.}	
#' }
#' 
NA
