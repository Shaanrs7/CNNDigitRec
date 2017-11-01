outfile="./vivado/xillydemo.runs/impl_1/xillydemo.bit"
logfile="./vivado/xillydemo.runs/synth_1/runme.log"

vivado -mode batch -source xillydemo-vivado.tcl

if [ -e $outfile ]
then
  printf "\nBitstream successfuly generated.\nCopying $outfile to current directory.\n\n"
  cp $outfile .
else
  printf "\n**** There were errors creating the bitstream!\n\n"
  grep --color=always -i error $logfile
fi

rm -f *.backup.log *.jou
