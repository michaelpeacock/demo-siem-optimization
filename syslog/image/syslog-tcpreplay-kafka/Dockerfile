FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
      bison \
      clang \
      cmake \
      flex \
      g++ \
      gcc \
      git \
      iproute2 \
      libssl-dev \
      librdkafka-dev \
      libpcap-dev \
      make \
      net-tools \
      python3 \
      softflowd \
      swig \
      tcpreplay \
      zlib1g-dev \
      netcat-traditional \
      && \
    rm -rf /var/lib/apt/lists/*
