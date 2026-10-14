#!/bin/bash
set -ex

export PYMUPDF_SETUP_MUPDF_BUILD=""
export PYMUPDF_SETUP_MUPDF_REBUILD=0
export PYMUPDF_SETUP_MUPDF_TESSERACT=0
export PYMUPDF_MUPDF_LIB="$PREFIX/lib"
export PYMUPDF_INCLUDES="$PREFIX/include:$PREFIX/include/mupdf:$PREFIX/include/freetype2"

$PYTHON -m pip install . -vv --no-deps --no-build-isolation
