#!/bin/bash 
#This is a basic bash script
#greeting="hello"

#echo $greeting, world \(planet\)!

#echo '$greeting, world (planet)!'
#echo 
#echo
#echo "$greeting, world (planet)!"

# WORKING WITH VARAIBLES 
#a=Hello
#b="Good Morning"
#c=16

#echo $a
#echo $b
#echo $c

#echo "$b! I have $c apples."

# COMMAND SUBSTITUTION
#d=$(pwd)
#echo $d
#a=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
#echo "The ping was $a"

#WORKING WITH NUMBERS
#d=2
#e=$((d+2))
#echo $e
#((e++))
#echo $e
#((e--))
#echo $e
#echo
#treated as a string if (()) left off
#e+=5
#echo $e
#((e*=3))
#echo $e
#((e/=3))
#echo $e
#((e-=5))
#echo $e

#f=$((1/3))
#echo $f
#g=$(echo 1/3 | bc -l)
#echo $g

#COMPARISON OPERATIONS
#returns 0 for success
#[[ 'cat' == 'cat' ]]
#echo $?

#returns 1 for failure
#[[ 'cat' = 'dog' ]]
#echo $?

#[[ 20 -gt 100 ]]
#echo $?

#a=""
#b="cat"
#[[ -z $a && -n $b ]]
#echo $?

#WORKING WITH STRINGS

#COLORING AND STYLING TEXT
#should be blinking Wrong
#echo -e "\033[5;31;40;mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"
#correct
#echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

#flashred="\033[5;31;40m"
#red="\033[31;40m"
#none="\033[0m"
#echo -e $flashred"ERROR: "$none$red"Something went wront"$none

#flashred=$(tput setab 0; tput setaf 1; tput blink)
#red=$(tput setab 0; tput setaf 1)
#none=$(tput sgr0)
#echo -e $flashred"ERROR: "$none$red"Something went wront"$none

#hand helpers: data and printf
#today=$(date +"%d-%m-%Y")
#time=$(date +"%H:%M:%S")
#printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
#echo "$d"

#WORKING WITH ARRAY
#a=()
#b=("apple" "banana" "cherry")
#echo ${b[2]}
#b[5]='kiwi'
#b+=("mango") #add to end of array
#echo ${b[@]}
#echo ${b[@]: -1} #grab last elememnt

#declare -A myarray
#myarray[color]=blue
#myarray["office building"]="HQ West"

#echo ${myarray["office building"]} is ${myarray[color]}

#READING AND WRITING TEXT FILES
#i=1
#while read f; do
#	echo "Line $i: $f"
#	((i++))
#done < file.txt

#USING HERE DOCUMENTS
#cat << EndOfText
#This is a
#multiline
#text string
#EndOfText

#cat <<- EndOfText #removes tabs
#	This is a
#	multiline
#	text string
#EndOfText

#ftp -n <<- DoneWithTheUpdate
#	open mirrors.xmission.com
#	user anonymous nothinghere
#	ascii
#	cd gutenberg
#	get GUTINDEX.01
#	by
#DoneWithTheUpdate

#TESTING TRUTH CONDITONS WITH IF KEYWORD
#a=2
#if [ $a -gt 4 ]; then
#	echo $a is greater than 4!
#else
#	echo $a is not greater than 4!
#fi

#a="This is my #1 string!"
#if [[ $a =~ [0-9]+ ]]; then
#        echo "There are numbers in the string: $a"
#else
#        echo "There are no numbers in the string: $a"
#fi

#WHILE AND UNTIL LOOPS
#i=0
#while [ $i -le 10 ]; do
#	echo i:$i
#	((i+=1))
#done

#j=0
#until [ $j -ge 10 ]; do
#        echo j:$j
#        ((j+=1))
#done

#INTRODUCING FOR LOOPS
#for i in 1 2 3 #prints 1 2 3
#for i in {1..100} #prints 1 to 100
#for i in {1..100..2} #prints 1 to 100 counting by 2's
#for (( i=1; i<=10; i++ )) #prints 1-10
#arr=("apple" "banana" "cherry")
#only works in 4
#declare -A arr
#arr["name"]="Angelena"
#arr["id"]="1234"
#for i in "${arr[@]}"
#do
#	echo "$i: ${arr[$i]}"
#done

#CASE STATEMENTS
#a="bird"
#case $a in
#	cat) echo "Feline";;
#	dog|puppy) echo "Canine";;
#	*) echo "No match!";;
#esac

#USING FUNCTIONS
#function greet {
#	echo "Hi there!"
#	echo "Hi $1"
#	echo "Hi $1! What a nice $2"
#}
#
#echo "And now, a greeting!"
#greet
#greet Angie
#greet Angie Morning
#greet Everybody Evening

#function numberthings {
#	i=1
#	for f in $@; do
#		echo $i: $f
#		((i+=1))
#	done
#}

#numberthings $(ls)

#numberthings pine birch maple spruce

#WORKING WITH ARGUMENTS
#echo $1
#echo $2

#for i in $@
#do
#	echo $i
#done
#
#echo "There were $# arguments."

#WORKING WITH FLAGS
while getopts :u:p:ab option; do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
		?) echo "I don't know what $OPTARG is!";;
	esac
done

echo "User: $user / Pass: $pass"

