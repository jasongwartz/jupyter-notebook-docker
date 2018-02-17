# jupyter-notebook-docker

This is a pretty basic, minimal image containing Python 3 and Jupyter. By default, the image will start and run the Jupyter Notebook on port 8888.

## NOTE

The default command runs with the `--NotebookApp.token=''` flag, which means that authentication is completely disabled. Anybody with access to the server via ssh or web access to the Notebook will have the ability to execute code. This is definitely a bad idea, so you should override the CMD with your own image or at runtime.
