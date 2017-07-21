# get the base image, this one has R, RStudio and pandoc
FROM rocker/verse

# required
MAINTAINER Daniel <knitter@geographie.uni-kiel.de>

COPY . /TestPackage

RUN . /etc/environment \

 && apt-get update -y \
 && apt-get install -y libudunits2-dev libgdal-dev libgsl0-dev gdal-bin libgeos-dev libpng-dev libproj-dev \

 && R --vanilla "options(repos='https://mran.microsoft.com/snapshot/2017-07-20'); devtools::install('/TestPackage', dep = TRUE)" \
 && R --vanilla "rmarkdown::render('/TestPackage/analysis/Test_2.Rmd')" \
