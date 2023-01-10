FROM rootproject/root

RUN apt update -y                                                      &&\
    apt install -y wget make python3-pip rsync vim gv
RUN pip3 install six --user

WORKDIR /opt/madgraph/installation

RUN wget "https://launchpad.net/mg5amcnlo/3.0/3.4.x/+download/MG5_aMC_v3.4.1.tar.gz"    &&\
    tar -zxf "MG5_aMC_v3.4.1.tar.gz"

RUN ln -s /opt/madgraph/installation/MG5_aMC_v3_4_1/bin/mg5_aMC /usr/local/bin/mg5

RUN printf "install Delphes"    | mg5
RUN printf "install pythia8"    | mg5
RUN printf "install fastjet"    | mg5
RUN printf "install fjcontrib"  | mg5

ENV PATH="${PATH}:/opt/madgraph/installation/MG5_aMC_v3_4_1/:/opt/madgraph/installation/MG5_aMC_v3_4_1/HEPTools/fastjet/" CPATH="${CPATH}:/opt/madgraph/installation/MG5_aMC_v3_4_1/HEPTools/fastjet/"

WORKDIR /opt/shared
