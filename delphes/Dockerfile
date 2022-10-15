FROM rootproject/root

RUN apt update -y                                                      &&\
    apt install -y wget make

WORKDIR /opt/delphes/installation

RUN wget "http://cp3.irmp.ucl.ac.be/downloads/Delphes-3.5.0.tar.gz"    &&\
    tar -zxf "Delphes-3.5.0.tar.gz"                                    &&\
    cd "Delphes-3.5.0"                                                 &&\
    make
