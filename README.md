## Run docker container

 ```docker run -v $(realpath ~/):/tf/notebooks -it -p 8888:8888 --gpus all balthasarschachtner/radler:v1.4 ```

### use password authentication instead of tokens:
- write password to ~/.jupyter/jupyter_notebook_config.json e.g. using ```jupyter notebook password```
- only works if you mount ```~/``` into the container

## Development resources:
- https://www.tensorflow.org/install/docker
- https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/dockerfiles/dockerfiles/gpu-jupyter.Dockerfile
- https://hub.docker.com/r/tensorflow/tensorflow
 
