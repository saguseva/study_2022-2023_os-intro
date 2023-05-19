while getopts i:o:p:Cn optl
do case $optl in 
i)     filein=$OPTARG;;
o)     fileout=$OPTARG;;
p)     pattern=$OPTARG;;
C)     register=1;;
n)     number=1
esac
done
if [ -n $filein ]
then
    if [ -n $register ]
    then
        if [ -n $number ]
        then
            grep -n "$pattern" "$filein"
        else
            grep "$pattern" "$filein"
        fi
    else
        if [ -n $number ]
        then 
            grep -in "$pattern" "$filein"
        else
            grep -i "$pattern" "$filein"
        fi
    fi
fi
if [ -n $fileout ]
then
    if [ -n $register ]
    then
        if [ -n $number ]
        then
            grep -n "$pattern$" "$filein" > "$fileout"
        else
            grep "$pattern" "$filein" > "$fileout"
        fi
    else
        if [ -n $number ]
        then 
            grep -in "$pattern" "$filein" > "$fileout"
        else
            grep -i "$pattern" "$filein" > "$fileout"
        fi
    fi
fi            
