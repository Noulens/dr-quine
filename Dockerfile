FROM        rust

RUN         mkdir dr_quine && \
            chmod 777 dr_quine

WORKDIR     /dr_quine

COPY        ./RUST .

RUN	        apt update && \
            apt upgrade -y && \
            apt install -y fish

RUN         make
