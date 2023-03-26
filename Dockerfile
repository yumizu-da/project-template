FROM python:3.9.16

ENV PYTHONPATH "${PYTHONPATH}:/workspace"
WORKDIR /workspace

# poetry
# 23/3/26現在最新のversion 1.4.1の場合errorが発生するので, 1.4.0を使用
ENV POETRY_HOME=/opt/poetry
RUN curl -sSL https://install.python-poetry.org/ | python - --version 1.4.0 && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false
COPY pyproject.toml .
RUN poetry install
