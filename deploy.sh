#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/data/

Rscript -e 'library(rmarkdown);render("index.Rmd")' && rsync -avz --delete . ${USER}@${HOST}:~/${DIR}

exit 0
