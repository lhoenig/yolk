check:
	pycodestyle --ignore=E402 yolk setup.py
	python setup.py --long-description | rstcheck -
	check-manifest
	./check_readme.bash
