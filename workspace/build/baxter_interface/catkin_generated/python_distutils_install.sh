#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pedroildefonso/baxter_project/workspace/src/baxter_interface"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pedroildefonso/baxter_project/workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pedroildefonso/baxter_project/workspace/install/lib/python2.7/dist-packages:/home/pedroildefonso/baxter_project/workspace/build/baxter_interface/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pedroildefonso/baxter_project/workspace/build/baxter_interface" \
    "/usr/bin/python" \
    "/home/pedroildefonso/baxter_project/workspace/src/baxter_interface/setup.py" \
    build --build-base "/home/pedroildefonso/baxter_project/workspace/build/baxter_interface" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/pedroildefonso/baxter_project/workspace/install" --install-scripts="/home/pedroildefonso/baxter_project/workspace/install/bin"
