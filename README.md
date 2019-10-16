## Run docker container

 ```docker run -v $(realpath ~/):/tf/notebooks -it -p 8888:8888 --gpus all balthasarschachtner/radler:latest ```

### use password authentication instead of tokens:
- write password to ~/.jupyter/jupyter_notebook_config.json e.g. using ```jupyter notebook password```
- only works if you mount ```~/``` into the container
