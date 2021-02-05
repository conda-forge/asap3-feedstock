#!/bin/bash

cat > customize-local.py <<EOF
mpi_libraries += [" -lmpi "]
EOF

$PYTHON -m pip install . -vv
