# ccafs - prototype of a build system

`ccafs` is a simple prototype that stores the resulting objects in a
content-addressable file system, providing immutability and better dependency
management of the source code. It does not replace `make` but increments it.

The end result of this project should be similar to `nix` but for compiling code
and managing dependencies and libraries, as a matter of fact it has a potential
to remove the lib packaging from UNIX (the `libXYZ.a`), and that's why i decided
to try. But for now it's closer to `ccache`.

