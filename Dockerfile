FROM python

RUN pip install jupyter
RUN useradd -ms /bin/bash jupyter

USER jupyter
WORKDIR /notebooks
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--NotebookApp.token=''"]
