#!/usr/bin/make -f

TEMPLATE_TEX_TAREAS = "../rsrc/templates/tareas-tpl.latex"
PDF_PATH := $(shell readlink -f PDFS)
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex "


UD12_NAME = "Unidad12_Mantenimiento"

clean :
	@echo "=========================="
	@echo " * Borrando minted folders"
	find . -name "_minted*" -exec rm -rf {} \;

unidad11 :
	@echo " ----- UD 11 -----"
	./bin/md-to-pdf.sh 11

unidad12 : 
	@echo " ----- UD 12 --: Mantenimiento "
	@./bin/md-to-pdf.sh 12