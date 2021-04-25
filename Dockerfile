FROM continuumio/anaconda3:2020.11

RUN /opt/conda/bin/conda install jupyter -y --quiet

RUN mkdir /app

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/app", "--allow-root", "--ip=*", "--port=8888", "--no-browser"]