## Wrapper for ROOT Data Analysis Framework's Docker Image

# Execution
Start the docker daemon and clone this repo

To enter root inside the docker container, run
```sh
./communicate
```

To enter root without connecting to the display, run
```sh
./communicate nodisplay
```

To enter the shell in the docker container, run
```sh
./communicate sh
```

# Graphics
`On some platforms (e.g., Arch Linux) connections to the X server must be allowed explicitly by executing xhost local:root or an equivalent command (see e.g. this page for more information on xhost and its possible security implications).`
