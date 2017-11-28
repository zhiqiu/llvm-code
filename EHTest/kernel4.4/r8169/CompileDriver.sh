#!/bin/bash
#Usage: ./DriverInKernel.sh

opt=$1
func=$2
caller=$3
pairfile=$4

mkdir tmp
mkdir mytest

make CC=clang EXTRA_CFLAGS+="-emit-llvm -S" -k
echo "###make finish###"
for file in ./*
do
	#judge whether is .o file
	mytest=${file#*".o"}
	if [ "$mytest" = "" ]; then
		#.o file is .bs file in truth
		name=${file%*".o"}
		bsfile=$name".ll"
		mv $file $bsfile
		../../RemoveSymbol $bsfile	

        echo "#####revise .bs file#####"	
		#revise .bs file
		cp $bsfile mytest/	
		if [ "$opt" = "-r" ]; then
			../../EHTest -r $bsfile
		elif [ "$opt" = "-f" ]; then
			../../EHTest -f $bsfile $func $caller $pairfile
		fi
		
		llvm-dis $bsfile -o $bsfile

		#change .bs file into .s file
		ssfile=$name".s"
		clang -O2 -mcmodel=kernel -S $bsfile -o $ssfile -mno-sse -mno-mmx

		#change .s file into .o file
		objfile=$name".o"
		gcc -mcmodel=kernel -c $ssfile -o $objfile
		
		mv $objfile tmp/
		rm $ssfile -f
		rm $bsfile -f
	fi
done

#gather into one .o file
cp Makefile tmp/
cp ../../Monitor/Module.symvers tmp/
cd tmp
make
mv *.ko ../
cd ..
rm tmp -r -f
rm modules.order
