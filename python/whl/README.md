python manylinux1 wheel (pip install whl)

- build use manylinux1, auditwheel

how install
----------------------
docker run --rm -it -v $(pwd):/work -w /work python:3.5.2-alpine pip install ./mysqlclient-1.3.9-cp35-cp35m-linux_x86_64.whl
