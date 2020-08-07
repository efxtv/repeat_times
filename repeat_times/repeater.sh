#!/bin/bash
echo "end of the doc" > output/text
echo -en "Enter the text you want to repeat as output: "
read entr
#sed -i '2d' ./abc.sh #removes 2nd line

echo "#!/bin/bash"> abc.sh #first line will be shifted below and new line over written
echo "ed -s output/text <<< $'0i\n$entr\n.\nwq'" >> abc.sh #will saved to the first line 
#echo "#!/bin/bash">> abc.sh #first line will be shifted below and new line over written
#sed -i '2d' ./abc.sh
echo -en "Enter number of time you want to repeat: "
read nnnn
echo -e "Your Entered text will be repeated in "output/text" $nnnn number of times"
#sed -i "19i $rrr" repeater.sh #add to line 19
#sed -i '20d' ./repeater.sh #remove line 20created because of 19
for i in $(seq 1 "$nnnn"); do
    ./abc.sh
done




#for i in {1.."${nnnn}"}; do
#for i in {1.."${REPEAT}"}; do
#./abc.sh;
#done
