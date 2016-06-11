compile:
	@moonc .

retroarch:
	@retroarch .

play: compile retroarch

clean:
	@find . -name "*.lua" -exec rm -rf {} \;

test: compile
	moonc -l .
