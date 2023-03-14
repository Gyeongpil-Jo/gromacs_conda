FROM continuumio/miniconda3

WORKDIR /code

SHELL ["/bin/bash", "--login", "-c"]

COPY environment.yml .
RUN conda env create -f environment.yml

COPY --chmod=755 './run.sh' '/run/entrypoint.sh'

ENTRYPOINT ["/bin/bash", "-c", "/run/entrypoint.sh"]

