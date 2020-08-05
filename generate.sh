#!/usr/bin/bash

for ARGUMENT in "$@"
do

    KEY=$(echo $ARGUMENT | cut -f1 -d=)
    VALUE=$(echo $ARGUMENT | cut -f2 -d=)   

    case "$KEY" in
            SEED)    SEED=${VALUE} ;;     
			NUM)    NUM=${VALUE} ;;  
            *)   
    esac    


done


echo "SEED = $SEED"
echo "NUM = $NUM"

make

bin/WordGeneratorTest "$SEED" "$NUM"