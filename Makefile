check:
	pep8 yolk setup.py
	python setup.py --long-description | rstcheck -
	check-manifest
