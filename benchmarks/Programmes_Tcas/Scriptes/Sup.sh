chemin_Programmes_Tcas=/home/mdbekkouche/These/Benchmarks_MCS-IIS/Programs_Benchmarks_MCS-IIS/Programmes_Tcas


while read line0
do
 if [[ $line0 != "Tcas" ]]
 then
 
  while read line
  do    
        mkdir -p $chemin_Programmes_Tcas/$line0/$line0"_Faults";

        rm -r $chemin_Programmes_Tcas/$line0/$line0"_Faults";
  
    
  done < $chemin_Programmes_Tcas/$line0/CE_$line0.txt
 
 fi
done < $chemin_Programmes_Tcas/Scriptes/Programmes_Tcas.txt
