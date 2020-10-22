.PHONY: get_files clean_pdf_and_src clean_git create_src clean_src

test_name: clean_pdf_and_src get_files test_pdf_making

test_pdf_making: 
	pandoc --toc --toc-depth 1 -o pdf_name_here.pdf ./src/*
	
	make clean_src

clean_git:
	rm -rf ./Learning-RLua/

get_files:
	git clone git@github.com:Roblox-Developers-CodeSkids/Learning-RLua.git
	
	make create_src
	
	mv ./Learning-RLua/src/* ./src/
	rm -f ./src/SUMMARY.md
	
	make clean_git

clean_pdf_and_src:
	rm -rf pdf_name_here.pdf
	make clean_src
	make clean_git

create_src:
	mkdir ./src/

clean_src:
	rm -rf ./src/