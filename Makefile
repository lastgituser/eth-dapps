clean:
	shred -u $(find * | grep build)
