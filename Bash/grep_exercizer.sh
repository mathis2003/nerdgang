#!/bin/bash
# author: reyniersbram

syntaxError() {
	echo "Syntax Error: grep_exercicer [-f <filename>] [-g <filename>]" 1>&2
	exit 1
}

argumentError() {
	echo "Argument Error: Expected an argument, but none was given" 1>&2
	exit 2
}

unknownFileError() {
	echo "Unknown File Error: $1" 1>&2
	exit 3
}

file=grep_exercice.txt
while getopts ":f:g:" opt
do
	case $opt in
		f )	file=$OPTARG
			;;
		g )	if [[ ! -f $OPTARG ]] || [[ ! -r $OPTARG ]]
			then
				unknownFileError $OPTARG
			fi
			g=1
			input_file=$OPTARG
			;;
		\?) syntaxError
			;;
		\:) argumentError
	esac
done
shift $((OPTIND - 1))

if [[ "$g" == 1 ]]
then
while read line
do
	if [[ ${line:0:3} == '###' ]]
	then
		ex=$(echo $line | cut -d ' ' -f 2)
		part=${ex::1}
		number=${ex:1:2}
		echo "$ex : $part : $number"

	elif [[ ${line:0:1} == '#' ]]
	then
		echo "$line" >> $file
	fi	
done < $input_file
exit 0
fi


#generate an empty template
cat << HERE > $file
### P1 ###
# replace this comment with your solution

### P2 ###
# replace this comment with your solution

### P3 ###
# replace this comment with your solution

### P4 ###
# replace this comment with your solution


### w1 ###
# replace this comment with your solution

### w2 ###
# replace this comment with your solution

### w3 ###
# replace this comment with your solution

### w4 ###
# replace this comment with your solution
HERE

