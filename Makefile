default: clean


clean:
	find . -name "*~" -exec rm -vf \{\} \+
