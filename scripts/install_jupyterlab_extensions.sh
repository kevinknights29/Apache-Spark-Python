#!/bin/bash

# Extensions for JupyterLab can be found: https://jupyterlab-contrib.github.io/migrate_from_classical.html
# Install JupyterLab LSP extension
pip install --no-cache-dir jupyterlab-lsp 'python-lsp-server[all]' && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Install JupyterLab Code Formatter extension
pip install --no-cache-dir jupyterlab-code-formatter black isort && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Install JupyterLab Execute Time extension
pip install --no-cache-dir jupyterlab_execute_time && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Install JupyterLab Spell Checker extension
pip install --no-cache-dir jupyterlab-spellchecker && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
