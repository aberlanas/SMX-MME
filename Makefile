#!/usr/bin/make -f

clean :
	@echo "=========================="
	@echo " * Borrando minted folders"
	find . -name "_minted*" -exec rm -rf {} \;

unidad11 :
	@echo " ----- UD 11 -----"
	./bin/md-to-pdf.sh 11