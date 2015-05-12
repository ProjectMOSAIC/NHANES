
## Test environments

* local OS X install, R version 3.2.0 Patched (2015-04-26 r68264)
* win-builder (devel and release) on 2015-05-12

## R CMD check results

There were no ERRORs, WARNINGs, or NOTEs asside from NOTE about CRAN 
incoming feasibility/maintainer. 

## Downstream dependencies

The only reverse dependency is my `mosaic` package (suggests) which only uses this in 
a vignette.  That vignette has been revised in the github version of `mosaic` 
and we anticipate submitting the new version of `mosaic` to CRAN soon after `NHANES` 
has cleared channels.