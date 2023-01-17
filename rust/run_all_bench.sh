#!/bin/sh
for d in $(cat dataset_list.txt); do
    out="bench_report.$(basename $d)"
    echo dataset: $d
    cargo run -r --bin measure -- -k $d | tee $out | grep -e crawdad -e construct
done
