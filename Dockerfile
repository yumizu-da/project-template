FROM python:3.9.16-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y curl make && \
    apt-get clean

ENV PYTHONPATH "${PYTHONPATH}:/workspace"
WORKDIR /workspace

# poetry
ENV POETRY_HOME=/opt/poetry
RUN curl -sSL https://install.python-poetry.org/ | python - && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false
COPY pyproject.toml .
COPY poetry.lock .
RUN poetry install
