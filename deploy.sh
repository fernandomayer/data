#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/data/
read -p 'PORTA: ' PORT

Rscript -e 'library(rmarkdown);render("index.Rmd")' && rsync -avz -e "ssh -p $PORT" --delete . ${USER}@${HOST}:~/${DIR}

exit 0
