FROM jupyter/pyspark-notebook:177037d09156

USER root

# Add static local resources
RUN mkdir /examples
ADD python3/spark-example.ipynb /examples
RUN chmod -R 777 /examples

RUN which python
RUN sudo /opt/conda/bin/pip install findspark

RUN apt-get update
RUN apt-get install -y zlib1g-dev
