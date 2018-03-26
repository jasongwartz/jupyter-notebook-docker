FROM debian:stretch

RUN useradd -ms /bin/bash jupyter && \
    mkdir /notebooks && \
    chown jupyter /notebooks

RUN apt update && apt install -y libatlas-base-dev python3-pip
RUN pip3 install jupyter matplotlib numpy

USER jupyter
WORKDIR /notebooks
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--NotebookApp.token=''"]

