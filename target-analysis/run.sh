#!/bin/bash
rm -f *.png *.dot *.pdf

./target-dependencies.py ./resources/jpf-core-build.xml ./jpf-core-graph.dot
./target-dependencies.py ./resources/jpf-symbc-build.xml ./jpf-symbc-graph.dot

OUTPUT_TYPE=pdf
dot -T$OUTPUT_TYPE -O jpf-core-graph.dot
dot -T$OUTPUT_TYPE -O jpf-symbc-graph.dot

pdfcrop jpf-core-graph.dot.$OUTPUT_TYPE ../proposal/figs/jpf-tasks.$OUTPUT_TYPE
pdfcrop jpf-symbc-graph.dot.$OUTPUT_TYPE ../proposal/figs/symbc-tasks.$OUTPUT_TYPE
