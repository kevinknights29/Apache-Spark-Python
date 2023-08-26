# Sources:
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/recipes.html#using-mamba-install-or-pip-install-in-a-child-docker-image
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/specifics.html#apache-spark
FROM jupyter/pyspark-notebook:latest
LABEL authors="Kevin Knights | kevinknights29"

# Enable JupyterLab
ENV JUPYTER_ENABLE_LAB=yes

# Switch to root to install packages
USER root

# Install system packages
COPY ./scripts/install_packages.sh .
RUN bash install_packages.sh && \
    rm install_packages.sh

# Install JupyterLab extensions
COPY ./scripts/install_jupyterlab_extensions.sh .
RUN bash install_jupyterlab_extensions.sh && \
    rm install_jupyterlab_extensions.sh

# Adding theme configuration to JupyterLab
COPY ./overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json
