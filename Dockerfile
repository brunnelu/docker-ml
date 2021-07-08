FROM rayproject/ray-ml:nightly-py38-gpu

# env var for pytorch version to use for pytorch geometric
ENV CUDA cu111
ENV TORCH 1.9.0

# install jupyther lab
RUN conda install -c conda-forge jupyterlab

# RUN pip install torch==${TORCH}+${CUDA} torchvision==0.9.0+${CUDA} torchaudio==0.8.0 -f https://download.pytorch.org/whl/torch_stable.html

# install pytorch geometric
# RUN  pip install --no-index torch-scatter -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html\
#  &&  pip install --no-index torch-sparse -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html\
#  &&  pip install --no-index torch-cluster -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html\
#  &&  pip install --no-index torch-spline-conv -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html\
#  && pip install torch-geometric

# RL dependencies
RUN pip install pettingzoo supersuit pymunk wandb gputil

# run container in user context for more security
USER 1000:1000  

# default command to run (starts jupyther hub)
CMD jupyter-lab --NotebookApp.token=''