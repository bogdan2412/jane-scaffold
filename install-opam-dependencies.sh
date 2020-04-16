#!/bin/bash

opam install -y \
    bos.0.2.0 \
    cmdliner.1.0.4 \
    ctypes.0.17.1 \
    ctypes-foreign.0.4.0 \
    dune.2.5.0 \
    dune-configurator.2.5.0 \
    merlin.3.3.4 \
    ocamlbuild.0.14.0 \
    ocp-indent.1.8.1 \
    result.1.5 \
    seq.base

opam install -y \
    fpath.0.7.2 \
    uuseg.13.0.0
