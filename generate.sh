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

if [[ -z "${SEED// }" ]]; then
	SEED=$(date +%s%N)
fi

if [[ -z "${NUM// }" ]]; then
	NUM=10
fi

echo "SEED = $SEED"
echo "NUM = $NUM"

mkdir -p bin
mkdir -p build

make

bin/WordGeneratorTest "$SEED" "$NUM"
