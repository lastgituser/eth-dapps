clean:
	@shred -u $$(find * | grep build) 2> /dev/null || rm -rf */build
