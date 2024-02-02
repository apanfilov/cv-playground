FROM continuumio/anaconda3

# Update Anaconda packages
RUN conda update -n base -c defaults conda

# Install Jupyter
RUN conda install -c conda-forge jupyterlab

# Install additional libraries
RUN conda install -c conda-forge opencv matplotlib numpy

# Set working directory
# WORKDIR /app

# Expose Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

# RUN conda install jupyter -y --quiet && \
#     mkdir -p /opt/notebooks && \
#     jupyter notebook \
#     --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
#     --no-browser --allow-root"

EXPOSE 8888