#!/bin/bash
exec 1>./telnet-test-output.txt
exec 2>./telnet-test-output.txt
input=ip.txt
while IFS= read -r line
do
 lineElements=($line)
 echo "testing:" "${lineElements[0]}" "${lineElements[1]}" "${lineElements[2]}" "${lineElements[3]}" "${lineElements[4]}" "${lineElements[5]}"  "${lineElements[6]}" "${lineElements[7]}" "${lineElements[8]}"
 nc -zv "${lineElements[0]}" "${lineElements[1]}" "${lineElements[2]}" "${lineElements[3]}" "${lineElements[4]}" "${lineElements[5]}"  "${lineElements[6]}" "${lineElements[7]}" "${lineElements[8]}" -w 5
done < "$input"
