require(Hmisc)
require(dplyr)
require(NHANES)
data(NHANES)
data(NHANESraw)

# fetched from http://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEMO_G.XPT
if (!file.exists("DEMO_G.rds")) {
  sasxport.get("http://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEMO_G.XPT") -> dem1112
  saveRDS(dem1112, file="DEMO_G.rds")
} else {
  dem1112 <- readRDS("DEMO_G.rds")
}

if (!file.exists("DEMO_F.rds")) {
  sasxport.get("http://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DEMO_F.XPT") -> dem0910
  saveRDS(dem0910, file="DEMO_F.rds")
} else {
  dem0910 <- readRDS("DEMO_F.rds")
}


Merge <- function(current, new) {
  currentA <- current %>% filter(grepl("09", SurveyYr))
  currentB <- current %>% filter(grepl("11", SurveyYr))
  newA <- new %>% filter(sddsrvyr == 6) 
  newB <- new %>% filter(sddsrvyr == 7)
  bind_rows(
    merge(currentA, newA, by.x="ID", by.y = "seqn", all.x = TRUE, all.y=FALSE),
    merge(currentB, newB, by.x="ID", by.y = "seqn", all.x = TRUE, all.y=FALSE)
  )
}
  
Extra <-
  bind_rows(dem0910, dem1112) %>%
  mutate( 
    Pregnant = mosaic::derivedFactor(
      Yes      = ridexprg == 1,
      No       = ridexprg == 2,
      Unknown  = ridexprg ==3,
      .default = NA,
      .method = "first"
    )
  ) 
  
NHANES <- 
  Merge(NHANES, Extra %>% select(seqn, Pregnant, sddsrvyr)) %>%
  select(-sddsrvyr)

NHANESraw <- 
  Merge(NHANESraw, Extra %>% select(seqn, Pregnant, sddsrvyr)) %>%
  select(-sddsrvyr)
