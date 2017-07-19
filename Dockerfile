# get the base image, this one has R, RStudio and pandoc
FROM rocker/verse:3.4.1

# required
MAINTAINER Daniel <knitter@geographie.uni-kiel.de>

COPY . /TestPackage

RUN . /etc/environment \

 && R -e "devtools::install('TestPackage')" \
 && R -e "rmarkdown::render('/TestPackage/analysis/Test.Rmd')"