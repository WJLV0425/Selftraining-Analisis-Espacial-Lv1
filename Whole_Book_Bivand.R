### SCRIPTS BOOK

### APPLIED SPATIAL DATA ANALYSIS WITH R (BIVAND ET AL., 2013).

## Autor: Welifer Lebrón
## Fecha inicio: 21/01/21
## Fecha conclusión:

# A scripts that downloads all scripts in every chapter of the book is:

ASDAR_BOOK <- "https://asdar-book.org/book2ed"
chapters <- c("hello", "cm", "vis", "die", "cm2",
              "std", "sppa", "geos", "lat", "dismap")
for (i in chapters) {
  fn <- paste(i, "mod.R", sep="_")
  download.file(paste(ASDAR_BOOK, fn, sep = "/"), fn)
}

# To run all examples in the book, a number of packages need to installed. Running the following script will install those that are not already present.

pkgs <- c("boot", "CARBayes", "classInt", "coda", "cubature",
          "DCluster", "deldir", "epitools", "geoR", "ggplot2", "gstat",
          "INLA", "lattice", "latticeExtra", "lmtest", "maps", "maptools",
          "MASS", "McSpatial", "mgcv", "nlme", "osmar", "pgirmess", "plm",
          "R2BayesX", "R2WinBUGS", "raster", "RColorBrewer", "rgdal", "rgeos",
          "sandwich", "sp", "spacetime", "spatstat", "spdep", "spgwr", "sphet",
          "splancs", "xts")

for (p in pkgs) {
  if (inherits(try(library(p, character.only = TRUE)), "try-error"))
    install.packages(p, character.only = TRUE)
}

# A script that downloads all scripts, extracts all data, and reproduces the whole book is:

chapters <- c("hello", "cm", "vis", "die", "cm2",
              "std", "sppa", "geos", "lat", "dismap")
for (i in chapters) {
  ASDAR_BOOK <- "https://asdar-book.org"
  fn <- paste(i, "mod.R", sep="_")
  download.file(paste(ASDAR_BOOK, "book2ed", fn, sep = "/"), fn)
  da <- paste(i, "bundle.zip", sep = "_")
  download.file(paste(ASDAR_BOOK, "bundles2ed", da, sep = "/"), da)
  unzip(da)
  source(fn, echo = TRUE)
}

