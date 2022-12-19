 #!/bin/sh
#Generic Healthcheck script
# ./generic-hc.sh <path to collect info tgz>
# commands list file should reside next to shell script
# can write output to fiel > <name of output file
# Example:./generic-hc.sh  ./collect_info_.tgz > ../PATH/... data.txt

#INFO: Please use -v option for more details on failure. - IGNORE
# -v is option of health command

input="$1"
commands="commands.txt"
while read -r line; do
 echo '===================='
 asadm -c -f "$input" \
 "-e $line" 
 echo '±±±±±±±±±±±±±±±±±±±±±'
done <$commands


