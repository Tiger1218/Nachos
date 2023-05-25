init: chmod rm
chmod: 
	find . -type f | xargs -I {} chmod 644 {}
	find . -type d | xargs -I {} chmod 755 {}

rm: 
	find . -type f -name '._*' | xargs rm
