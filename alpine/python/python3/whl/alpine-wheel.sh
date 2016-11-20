
# docker build -f Dockerfile.alpine-python3-gcc-mariadb -t alpine-python3-gcc-mariadb:latest .

CMD="docker run --rm -i -v $(pwd):/docker -w /docker alpine-python3-gcc-mariadb:latest sh"
cat <<EOF |$CMD
    pip install wheel
    pip wheel uwsgi
    pip wheel mysqlclient 
    # ls -tlr |tail -n 5
    # cp mysqlclient-1.3.9-cp35-cp35m-linux_x86_64.whl 
    # cp uWSGI-2.0.14-cp35-cp35m-linux_x86_64.whl
EOF

# pip install wheel
# pip wheel mysqlclient uwsgi

