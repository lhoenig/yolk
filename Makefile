register:
	@python setup.py register sdist upload
	@srm ~/.pypirc
