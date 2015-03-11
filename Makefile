default: compile retroarch

compile:
	@moonc .

retroarch:
	@retroarch .

clean:
	@find . -name "*.lua" -exec rm -rf {} \;
