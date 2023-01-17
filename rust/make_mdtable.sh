#!/bin/bash

function dump {
    if [ ${#RAW[@]} -eq 0 ]; then
        return
    fi
    echo -n "|$(basename $DS)|"
    for v in ${RAW[@]}; do
        echo -n "$v|"
    done
    echo ""
}
echo "|dataset|crawdad/trie|crawdad/mptrie|crawdad_new_constr/trie| crawdad_new_constr/mptrie |
      |---|---|---|---|---|"
while read line; do
    case $line in
        dataset:*)
            dump
            DS=${line#dataset: }
            RAW=()
            ;;
        construction:*)
            VALS=($line)
            RAW+=("${VALS[1]}")
            ;;
    esac    
done
dump
