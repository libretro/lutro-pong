ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

compile:
	@moonc .

retroarch:
	@retroarch -L ~/.config/retroarch/cores/lutro_libretro.so .

play: compile retroarch

clean:
	@find . -name "*.lua" -exec rm -rf {} \;
	rm -rf lutro-pong lutro-pong.lutro

release: clean compile
	git archive --format=zip --output=${ROOT_DIR}/lutro-pong.lutro master

play-release: release
	@retroarch -L ~/.config/retroarch/cores/lutro_libretro.so lutro-pong.lutro
