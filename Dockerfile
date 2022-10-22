FROM rootproject/root

WORKDIR /opt/delphes/installation
RUN wget "http://cp3.irmp.ucl.ac.be/downloads/Delphes-3.5.0.tar.gz"    &&\
    tar -zxf "Delphes-3.5.0.tar.gz"                                    &&\

WORKDIR /opt/pythia/installation
RUN wget "https://pythia.org/download/pythia83/pythia8307.tgz"         &&\
    tar -zxf "pythia8307.tgz"                                          &&\

RUN apt update -y                                                      &&\
    apt install -y wget make rsync

WORKDIR /opt/pythia/installation/Delphes-3.5.0
RUN make
WORKDIR /opt/pythia/installation/pythia8307
RUN make install
