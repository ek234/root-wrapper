## Wrapper for madgraph5

# Dependencies

You will need docker for this. Install it using your package manager.

# Execution
Start the docker daemon and clone this repo

To build madgraph
```sh
./wradg build
```

To enter mg5_aMC, run:
```sh
./wradg
```

To enter the shell in the docker container, run
```sh
./wradg sh
```

# Graphics
`On some platforms (e.g., Arch Linux) connections to the X server must be allowed explicitly by executing xhost local:root or an equivalent command (see e.g. this page for more information on xhost and its possible security implications).`
