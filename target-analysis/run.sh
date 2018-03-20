#!/bin/bash
rm -f *.png *.dot

./target-dependencies.py ./resources/jpf-core-build.xml ./jpf-core-graph.dot
./target-dependencies.py ./resources/jpf-symbc-build.xml ./jpf-symbc-graph.dot

dot -Tpng -O jpf-core-graph.dot
dot -Tpng -O jpf-symbc-graph.dot

cp jpf-core-graph.dot.png ../proposal/figs/jpf-tasks.png
cp jpf-symbc-graph.dot.png ../proposal/figs/symbc-tasks.png
