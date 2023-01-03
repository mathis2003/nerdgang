grep1=0
grep2=0
grep3=0
grep4=0
grep1line=""
grep2line=""
grep3line=""
grep4line=""

cat $1 | sed '/^$/d' > .greps

while read -r line;do
    if [[ grep1 -eq 1 ]];then
        grep1=0
        grep1line=$line
    elif [[ grep2 -eq 1 ]];then
        grep2=0
        grep2line=$line
    elif [[ grep3 -eq 1 ]];then
        grep3=0
        grep3line=$line
    elif [[ grep4 -eq 1 ]];then
        grep4=0
        grep4line=$line
    fi
    if [[ $line == "### P1 ###" ]];then
        #echo "grep 1"
        grep1=1
    elif [[ $line == "### P2 ###" ]];then
        #echo "grep 2"
        grep2=1
    elif [[ $line == "### P3 ###" ]];then
        #echo "grep 3"
        grep3=1
    elif [[ $line == "### P4 ###" ]];then
        #echo "grep 4"
        grep4=1
    else
        : #echo $line
    fi
done < .greps

echo "### w1 ###" >> .output
echo "$grep1line | $( sed "s/$2//" <<< $grep2line) | $3" >> .output
echo "### w2 ###" >> .output
echo "$grep2line | $( sed "s/$2//" <<< $grep3line) | $3" >> .output
echo "### w3 ###" >> .output
echo "$grep3line | $( sed "s/$2//" <<< $grep4line) | $3" >> .output
echo "### w4 ###" >> .output
echo "$grep4line | $( sed "s/$2//" <<< $grep1line) | $3" >> .output
cat .output
rm .output
