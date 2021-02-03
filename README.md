## Run docker container

 ```docker run -u $(id -u):$(id -g) -v $(realpath ~/):/tf/notebooks -it -p 8888:8888 --gpus all balthasarschachtner/radler:v{x.y}```

### use password authentication instead of tokens:
- write password to ~/.jupyter/jupyter_server_config.json ```docker run -u $(id -u):$(id -g) -v $(realpath ~/):/tf/notebooks -it balthasarschachtner/radler:v{x.y} jupyter server password```
- only works if you mount ```~/``` into the container
- otherwise copy ```.jupyter/jupyter_server_config.json``` into the notebook directory (needs to appear to the container in ```/tf/notebooks/.jupyter/jupyter_server_config.json```

## Development resources:
- https://www.tensorflow.org/install/docker
- https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/dockerfiles/dockerfiles/gpu-jupyter.Dockerfile
- https://hub.docker.com/r/tensorflow/tensorflow
