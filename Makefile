# Este fichero es parte del NĂşmero 1 de la Revista GLUD Magazine
# Revista GLUD Magazine NĂşmero 1
#%
# (c)  2011, GLUD Magazine
#
# Esta obra estĂĄ bajo una licencia Reconocimiento 2.5 EspaĂąa de Creative
# Commons. Para ver una copia de esta licencia, visite 
# http://creativecommons.org/licenses/by/2.5/es/
# o envie una carta a Creative Commons, 171 Second Street, Suite 300, 
# San Francisco, California 94105, USA.
#
# Se aclara este fichero es una copia del original producido por los 
# desarrolladores de la revista OCCAM'S RAZOR y en el GLUD hemos reuti-
# lizado su cĂłdigo.
# Cualquier complicaciĂłn al ejecutar make, say WTF!


NUMBER=01
EDITION=01

NAME=glud-magazine-${NUMBER}-${EDITION}

all: *tex
	latex portada.tex && latex portada.tex && dvips portada.dvi -o ${NAME}.ps && ps2pdf ${NAME}.ps
	rm -f ${NAME}.ps.gz
	gzip ${NAME}.ps

.PHONY:
clean:
	rm -f *aux *dvi *log *out

clean-all:
	rm -f *aux *dvi *log ${NAME}.ps.gz ${NAME}.pdf
