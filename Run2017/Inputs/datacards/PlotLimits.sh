for subrange in SR1
do

echo "Merge Combination output SR1:"

masses=(125 130 140 160 180 200)

for mass in ${masses[@]}

do

hadd -f combineMerge_${subrange}.root higgsCombineHbb_${subrange}.AsymptoticLimits.mH*.root

done

PlotLimit -i Hbb.limits_SR1

done


for subrange in SR2
do

echo "Merge Combination output SR2:"

masses=(250 300 350)

for mass in ${masses[@]}

do

hadd -f combineMerge_${subrange}.root higgsCombineHbb_${subrange}.AsymptoticLimits.mH*.root

done

PlotLimit -i Hbb.limits_SR2

done


for subrange in SR3
do

echo "Merge Combination output SR3:"

masses=(400 450 500)

for mass in ${masses[@]}

do

hadd -f combineMerge_${subrange}.root higgsCombineHbb_${subrange}.AsymptoticLimits.mH*.root

done

PlotLimit -i Hbb.limits_SR3

done


for subrange in SR4
do

echo "Merge Combination output SR4:"

masses=(600 700)

for mass in ${masses[@]}

do

hadd -f combineMerge_${subrange}.root higgsCombineHbb_${subrange}.AsymptoticLimits.mH*.root

done

PlotLimit -i Hbb.limits_SR4

done


echo "run PlotLimit script"
echo "mhmod+ scenario"
PlotLimit -i Hbb.limits
PlotLimit -i Hbb.limits_SR1
PlotLimit -i Hbb.limits_SR2
PlotLimit -i Hbb.limits_SR3
PlotLimit -i Hbb.limits_SR4
echo "hMSSM benchmark"
#PlotLimit -M tanBeta -b ${CMSSW_BASE}/src/Analysis/MssmHbb/macros/signal/hMSSM_13TeV.root -i Hbb.limits

mv *.png ../results
mv *.pdf ../results

echo "Done"

