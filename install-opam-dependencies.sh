#!/bin/bash

opam install -y \
    cmdliner.1.0.4 \
    "$(dirname "$0")/ocaml-ctypes/ctypes.opam" \
    ctypes-foreign.0.4.0 \
    dune.2.0.0 \
    dune-configurator.2.0.0 \
    merlin.3.3.3 \
    num.1.3 \
    ocamlbuild.0.14.0 \
    ocp-indent.1.8.1 \
    octavius.1.2.2 \
    result.1.4 \
    seq.base

opam install -y \
    fpath.0.7.2 \
    uuseg.12.0.0
