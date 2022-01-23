test: build/vader.vim
	test/run-tests.sh
.PHONY: test

update:
	cd build/vader.vim && git pull
.PHONY: update

build/vader.vim: | build
	git clone https://github.com/junegunn/vader.vim build/vader.vim

build:
	mkdir build

taskpaper.tar.gz:
	tar zcvf taskpaper.tar.gz autoload/ doc/ ftplugin/ ftdetect/ syntax/

deploy:
	rsync --exclude '*.sw?' -av autoload doc ftdetect ftplugin syntax $(HOME)/.vim
