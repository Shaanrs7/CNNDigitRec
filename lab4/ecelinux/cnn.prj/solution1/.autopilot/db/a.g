#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/srs383/ECE5775/Labs/lab4/ecelinux/cnn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
