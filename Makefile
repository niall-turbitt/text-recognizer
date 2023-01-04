# Compile and install exact pip packages
pip-tools:
	pip install pip==21.2 pip-tools==6.3.1 setuptools==59.5.0
	pip-compile requirements/prod.in && pip-compile requirements/dev.in
	pip-sync requirements/prod.txt requirements/dev.txt

