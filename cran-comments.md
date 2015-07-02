
## Test environments

 * local OS X: R version 3.2.1 Patched (2015-06-30 r68608)
 * win-builder: (devel and release) on 2015-07-02
 * Linux (via travis): on 2015-07-02

## R CMD check results

There were no ERRORs, WARNINGs, or NOTEs asside from NOTE about CRAN 
incoming feasibility/maintainer. 

## Downstream dependencies

The only reverse dependency is my `mosaic` package (suggests) which only uses this in 
a vignette.  