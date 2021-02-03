## Run docker container

 ```docker run -u $(id -u):$(id -g) -v $(realpath ~/):/tf/notebooks -it -p 8888:8888 --gpus all balthasarschachtner/radler:v{x.y}```

### use password authentication instead of tokens:
- write password to ~/.jupyter/jupyter_server_config.json by executing the command ```docker run -u $(id -u):$(id -g) -v $(realpath ~/):/tf/notebooks -it balthasarschachtner/radler:v{x.y} jupyter server password```
- this only works if you mount ```~/``` into the container (as done by the run command above)
- otherwise copy ```.jupyter/jupyter_server_config.json``` into the notebook directory (needs to appear to the container in ```/tf/notebooks/.jupyter/jupyter_server_config.json```

### Execute arbitrary commands within the docker environment:
- docker run -u $(id -u):$(id -g) -v $(realpath ~/):/tf/notebooks -it balthasarschachtner/radler:v{x.y} /bin/bash

## mount additional directories
- add another volume with another option, e.g. ```-v /data:/data```

## Development resources:
- https://www.tensorflow.org/install/docker
- https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/dockerfiles/dockerfiles/gpu-jupyter.Dockerfile
- https://hub.docker.com/r/tensorflow/tensorflow
