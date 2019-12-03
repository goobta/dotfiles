# Git notebook linking
pip install jupytext --upgrade
jupyter nbextension install --py jupytext --user
jupyter nbextension enable --py jupytext --user

# Vim
jupyter labextension install jupyterlab_vim

# Visual file tree
jupyter labextension install jupyterlab_filetree

# Table of contents
jupyter labextension install @jupyterlab/toc

# Goto definition (Alt-click)
jupyter labextension install @krassowski/jupyterlab_go_to_definition

# Git support
pip install --upgrade jupyterlab-git

jupyter lab build
