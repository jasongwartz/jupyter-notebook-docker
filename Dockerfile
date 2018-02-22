FROM python

RUN useradd -ms /bin/bash jupyter && \
    mkdir /notebooks && \
    chown jupyter /notebooks

RUN pip install jupyter

USER jupyter
WORKDIR /notebooks
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--NotebookApp.token=''"]

