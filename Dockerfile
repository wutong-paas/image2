FROM mysql:8.0.27
RUN apt-get update && apt-get install -y procps && rm -rf /var/lib/apt/lists/*
