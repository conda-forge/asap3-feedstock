#!/bin/bash

cat >> customize.py <<EOF
mpi_libraries += ["mpi"]
remove_compile_args += ['-march=native']
libraries += ["mpi"]
EOF

echo "============= CUSTOMIZE ==============="
cat customize.py
echo "============= CUSTOMIZE ==============="


$PYTHON -m pip install . -vv
