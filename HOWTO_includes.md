To copy includes (for code completion, etc), use docker copy. for example,
```sh
docker cp <containerid>:/opt/madgraph/installation/MG5_aMC_v3_4_1/Delphes/classes /usr/local/include
docker cp <containerid>:/opt/madgraph/installation/MG5_aMC_v3_4_1/Delphes/external /usr/local/include
docker cp <containerid>:/opt/madgraph/installation/MG5_aMC_v3_4_1/HEPTools/fastjet/include/fastjet /usr/local/include
docker cp <containerid>:/opt/madgraph/installation/MG5_aMC_v3_4_1/HEPTools/pythia8/include/Pythia8 /usr/local/include
```
make sure to copy to a directory which is searched by the compiler (eg. /usr/local/include for gcc)
