#######################
####### OPTIES  #######
#######################

while getopts ":xyz:" opt; do
  case ${opt} in
    x ) # process option x
        x="1";;
    y ) # process option y
        y="1";;
    z ) #process option z
        z=$OPTARG
        #check arg here
        ;;
  esac
done
shift $((OPTIND - 1)) #shift naar eerste niet optie argument


########################################
############  functions  ###############
########################################

#function to exit if there ocurs an error
#usage panic exitStatus
panic(){
    echo "Syntax: christmas [-m] [-n integer] [-s integer] FILE" >&2; exit $1
}
#function to check if an argument is a number with the default valeu in mind
#usage check_for_number_with_default_and_panic variable default exitStatus
check_for_number_with_default_and_panic(){
    re="^[1-9][0-9]*$"
    if [[ ! $1 -eq $2 ]];then
        if [[ ! $1 =~ $re ]];then
            panic $3
        fi
    fi
}
#function to check if a file exists and is readeble
#usage check_file filename
check_file(){
    if [[ ! -z $1 ]];then
        if [[ ! -r $1 ]] || [[ ! -f $1 ]];then
            exit 0
        fi
    fi
}
#function to check if a directory exists and is readeble
#usage check_directory directoryName
check_directory(){
    if [[ ! -z $1 ]];then
        if [[ ! -r $1 ]] || [[ ! -d $1 ]];then
            exit 0
        fi
    fi
}
#function to round a number
#usage round number
round() {
  echo $(printf %.0f $(echo "($1 + 0.5)/1" | bc))
}
#function to take the word from the line and calculate how many characters we need
#usage calculate_woord_and_length
calculate_woord_and_length(){
    woord=$(cut -d " " -f2 <<< $woordbreuk)
    length=$(round $(echo "scale=10;$(cut -d " " -f1 <<< $woordbreuk)*${#woord}"|bc))
}

## print line numbers before file vim
2,$!nl -s':' -w 1
