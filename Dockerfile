FROM rust:1.64

COPY *.sh /
RUN apt-get update \
        && apt-get install tcl tk expect -y \
        && git clone https://github.com/Manta-Network/manta-rs.git \
        && cd manta-rs \
        && cargo build --release --package manta-trusted-setup --all-features --bin groth16_phase2_client \
        && cp /manta-rs/target/release/groth16_phase2_client /bin/ \
        && rm -rf /manta-rs \
        && chmod +x  /bin/groth16_phase2_client \
        && chmod +x /registration.sh \
        && chmod +x /contribution.sh \
        && chmod +x /run.sh

CMD [ "sh", "-c", "/run.sh" ]
