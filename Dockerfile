FROM continuumio/miniconda3

WORKDIR /code

SHELL ["/bin/bash", "--login", "-c"]

COPY environment.yml .
RUN conda env create -f environment.yml

