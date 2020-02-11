#!/usr/bin/make -f


clean :
	@echo "=========================="
	@echo " * Borrando minted folders"
	find . -name "_minted*" -exec rm -rf {} \;
