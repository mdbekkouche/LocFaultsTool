chemin_Programmes_Tcas=/home/mdbekkouche/These/Benchmarks_MCS-IIS/Programs_Benchmarks_MCS-IIS/Programmes_Tcas

i=0;
while read line
do
    i=$((i+1));
    echo $($chemin_Programmes_Tcas/Tcas/Tcas $line) > $chemin_Programmes_Tcas/Sorties_correctes/t$i;
done < $chemin_Programmes_Tcas/Scriptes/cas-tests.txt;

while read line0
do
 if [[ $line0 != "Tcas" ]]
 then
 
  i=0;
  k=0;
  while read line
  do
    i=$((i+1)); 
    if [[ $(echo $(cat $chemin_Programmes_Tcas/Sorties_correctes/t$i) | cut -d":" -f1) != Error && $($chemin_Programmes_Tcas/$line0/$line0 $line) != $(cat  $chemin_Programmes_Tcas/Sorties_correctes/t$i) ]]
    then
      k=$((k+1));
      if [[ $k == 1 ]]
      then 
        echo t$i:$line > $chemin_Programmes_Tcas/$line0/CE_$line0.txt;
        #echo "La sortie fausse : " $($chemin_Programmes_Tcas/TcasKO/TcasKO $line) >> $chemin_Programmes_Tcas/TcasKO/CE_TcasKO.txt;
        #echo "La sortie correcte devrait etre : " $(cat $chemin_Programmes_Tcas/Sorties_correctes/t$i) >> $chemin_Programmes_Tcas/TcasKO/CE_TcasKO.txt;
      else
        echo t$i:$line >> $chemin_Programmes_Tcas/$line0/CE_$line0.txt;
        #echo "La sortie fausse : " $($chemin_Programmes_Tcas/TcasKO/TcasKO $line) >> $chemin_Programmes_Tcas/TcasKO/CE_TcasKO.txt; 
        #echo "La sortie correcte devrait etre : " $(cat $chemin_Programmes_Tcas/Sorties_correctes/t$i) >> $chemin_Programmes_Tcas/TcasKO/CE_TcasKO.txt;
      fi      
    fi 
  done < $chemin_Programmes_Tcas/Scriptes/cas-tests.txt;

 fi
done < $chemin_Programmes_Tcas/Scriptes/Programmes_Tcas.txt
