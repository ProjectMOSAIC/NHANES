
## Test environments

* local OS X install, R version 3.2.0 Patched (2015-04-26 r68264)
* win-builder (devel and release)

## R CMD check results

There were no ERRORs, WARNINGs, or NOTEs. 

## Downstream dependencies

The only reverse dependency is the `mosaic` package which only uses this in a vignette.  That vignette has been revised in the github version of `mosaic` and we anticipate submitting the new version of `mosaic` to CRAN soon after `NHANES` has cleared channels.