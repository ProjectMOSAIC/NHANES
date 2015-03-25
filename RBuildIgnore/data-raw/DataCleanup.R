
reLevel <- function(x, first) {
  lev <- levels(x)
  if (! all(first %in% lev)) stop("levels must already exist")
  first <- match(first, lev)
  factor(x, lev[c(first, seq_along(lev)[-first])]) 
}

NHANES <- mosaic::read.file("NHANES.csv")
NHANESraw <- mosaic::read.file("NHANESraw.csv")

## recode categorical variables

NHANES$Depressed <- reLevel(NHANES$Depressed, c("None", "Several", "Most"))
NHANES$LittleInterest <- reLevel(NHANES$LittleInterest, c("None", "Several", "Most"))
NHANES$HealthGen <- reLevel(NHANES$HealthGen, c("Excellent", "Vgood", "Good", "Fair", "Poor"))
levels(NHANES$BMICatUnder20yrs) <- c("UnderWeight", "NormWeight", "OverWeight", "Obese")
NHANES$HomeOwn <- reLevel(NHANES$HomeOwn, c("Own", "Rent", "Other"))
NHANES$Education <- reLevel(NHANES$Education, c("8thGrade", "9_11thGrade", "HighSchool", "SomeCollege", "CollegeGrad"))
levels(NHANES$Education) <- c("8th Grade", "9 - 11th Grade", "High School", "Some College", "College Grad")


NHANES$Race1 <- reLevel(NHANES$Race1, c("Black", "Hispanic", "Mexican", "White", "Other"))
NHANES$Race3 <- reLevel(NHANES$Race3, c("Asian", "Black", "Hispanic", "Mexican", "White", "Other"))


NHANESraw$Depressed <- reLevel(NHANESraw$Depressed, c("None", "Several", "Most"))
NHANESraw$LittleInterest <- reLevel(NHANESraw$LittleInterest, c("None", "Several", "Most"))
NHANESraw$HealthGen <- reLevel(NHANESraw$HealthGen, c("Excellent", "Vgood", "Good", "Fair", "Poor"))
levels(NHANESraw$BMICatUnder20yrs) <- c("UnderWeight", "NormWeight", "OverWeight", "Obese")
NHANESraw$HomeOwn <- reLevel(NHANESraw$HomeOwn, c("Own", "Rent", "Other"))
levels(NHANESraw$Education) <- c("8th Grade", "9 - 11th Grade", "High School", "Some College", "College Grad")


NHANESraw$Race1 <- reLevel(NHANESraw$Race1, c("Black", "Hispanic", "Mexican", "White", "Other"))
NHANESraw$Race3 <- reLevel(NHANESraw$Race3, c("Asian", "Black", "Hispanic", "Mexican", "White", "Other"))

NHANESraw <- 
  dplyr::rename(NHANESraw, 
                CompHrsDay = TVHrsDay.1,     # need to confirm this
                PhysActiveDays = PhyActiveDays, 
                CompHrsDayChild = ComputerHrsDayChild
  )

# Note:  TVHrsDay and TVHrsDay.1 in NHANESraw
# save as rda files if all looks good here.
# save(NHANES, file="../../data/NHANES.rda")
# save(NHANESraw, file="../../data/NHANESraw.rda")