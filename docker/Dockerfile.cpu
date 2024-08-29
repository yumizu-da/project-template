FROM ubuntu:24.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y curl git make libgl1-mesa-dev libglib2.0-0 gcc && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

WORKDIR /workspace
ENV PATH="/root/.cargo/bin/:${PATH}"

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

COPY .python-version pyproject.toml uv.lock README.md ./
RUN uv python pin "$(cat .python-version)" && \
    uv sync --dev
