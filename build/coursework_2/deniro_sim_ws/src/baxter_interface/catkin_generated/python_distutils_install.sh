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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/de3robotics/Desktop/DE3Robotics/src/coursework_2/deniro_sim_ws/src/baxter_interface"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/de3robotics/Desktop/DE3Robotics/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/de3robotics/Desktop/DE3Robotics/install/lib/python2.7/dist-packages:/home/de3robotics/Desktop/DE3Robotics/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/de3robotics/Desktop/DE3Robotics/build" \
    "/usr/bin/python2" \
    "/home/de3robotics/Desktop/DE3Robotics/src/coursework_2/deniro_sim_ws/src/baxter_interface/setup.py" \
     \
    build --build-base "/home/de3robotics/Desktop/DE3Robotics/build/coursework_2/deniro_sim_ws/src/baxter_interface" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/de3robotics/Desktop/DE3Robotics/install" --install-scripts="/home/de3robotics/Desktop/DE3Robotics/install/bin"