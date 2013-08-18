check:
	pep8 yolk setup.py
	python setup.py --long-description | rst2html.py --strict > /dev/null
