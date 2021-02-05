#!/bin/bash

cat > customize-local.py <<EOF
mpi_libraries += ["-lmpi"]
remove_compile_args += ['-march=native']
EOF

echo "============= CUSTOMIZE ==============="
cat customize.py

echo "============= CUSTOMIZE-LOCAL ==============="
cat customize-local.py


$PYTHON -m pip install . -vv
