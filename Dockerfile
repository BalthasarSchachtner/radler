FROM tensorflow/tensorflow:2.0.0-gpu-py3-jupyter

RUN mkdir /install

ADD requirements.txt /install

RUN pip install -U pip

RUN pip install -r /install/requirements.txt

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf/notebooks --ip 0.0.0.0 --no-browser --allow-root"]