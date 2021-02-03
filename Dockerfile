FROM tensorflow/tensorflow:2.4.1-gpu-jupyter

RUN mkdir /install

ADD requirements.txt /install

RUN pip install -U pip

RUN python --version

RUN pip install -r /install/requirements.txt

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt update &&  apt install -y --no-install-recommends \
    graphviz nodejs

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
RUN jupyter labextension install @jupyterlab/toc --no-build
#RUN jupyter labextension install @krassowski/jupyterlab_go_to_definition --no-build

RUN jupyter nbextension enable --py widgetsnbextension --sys-prefix

RUN jupyter lab build
RUN jupyter lab clean
RUN npm cache clean --force

RUN mkdir -p /tf/.jupyter

RUN ln -s /tf/notebooks/.jupyter/jupyter_server_config.json /tf/.jupyter/jupyter_server_config.json

ENV HOME /tf

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf/notebooks --ip 0.0.0.0 --no-browser --allow-root"]
