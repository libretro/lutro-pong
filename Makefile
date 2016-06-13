ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

build:
	@moonc .

run: build
	@retroarch -L ~/.config/retroarch/cores/lutro_libretro.so .

clean:
	@find . -name "*.lua" -exec rm -rf {} \;
	rm -rf lutro-pong lutro-pong.lutro

release: clean build
	git archive --format=zip --output=${ROOT_DIR}/lutro-pong.lutro master

run-release: release
	@retroarch -L ~/.config/retroarch/cores/lutro_libretro.so lutro-pong.lutro
