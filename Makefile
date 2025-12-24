.install-python:
	if [ ! -d "venv-dotfiles" ]; then \
		python3 -m venv venv-dotfiles && \
		. venv-dotfiles/bin/activate && \
		pip install -U pip wheel setuptools; \
	fi

.source-and-update-python: .install-python
	. venv-dotfiles/bin/activate && pip install -r requirements.txt

all: .source-and-update-python
	. venv-dotfiles/bin/activate && python install.py

clean: 
	rm -rf venv-dotfiles