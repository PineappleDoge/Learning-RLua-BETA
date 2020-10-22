test_name: clean_pdf_and_src get_files test_pdf_making

test_pdf_making: 
	pandoc --toc --toc-depth 1 -o pdf_name_here.pdf ./src/*
	
.PHONY: get_files clean_pdf_and_src clean_git
clean_git:
	rm -rf ./Learning-RLua/
	
get_files:
	git clone git@github.com:Roblox-Developers-CodeSkids/Learning-RLua.git
	
	mv ./Learning-RLua/src/* ./src/
	
	make clean_git
	
clean_pdf_and_src:
	rm -rf pdf_name_here.pdf ./src/*
	
	make clean_git
