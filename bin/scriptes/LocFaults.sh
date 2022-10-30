chemin_Programmes_while=/home/mdbekkouche/These/Benchmarks_MCS-IIS/Programs_Benchmarks_MCS-IIS/0_Conditions_Fausses/ProgrammesWhile
chemin_Programmes_whileBA=/home/mdbekkouche/These/Benchmarks_MCS-IIS/Programs_Benchmarks_MCS-IIS_BugAssist/0_Conditions_Fausses/ProgrammesWhile
chemin_CPBPV=/home/mdbekkouche/These/CBEL_ProjectV4/core/cpbpv
chemin_BugAssit=/home/mdbekkouche/These/Outils_Bug-Assist

while read line
do
    mkdir -p $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV";
    mkdir -p $chemin_Programmes_while/Resultats/CPLEX/$line/$line"_Faults";
    mkdir -p $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults";
    mkdir -p $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA";
    

    $chemin_CPBPV -solvers Z3 -writeCE $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" $chemin_Programmes_while/$line".java"           -int_format 32 -arrays_length 128 -max_unfoldings 128
    
    
    
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 3 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_3K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 5 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_5K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 10 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_10K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 50 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_50K"; 
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 100 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_100K";  
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 150 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_150K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 200 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_200K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 0 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 250 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_0CF_250K";

    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 3 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_3K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 5 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_5K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 10 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_10K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 50 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_50K"; 
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 100 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_100K";  
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 150 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_150K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 200 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_200K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 5 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 250 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_5CF_250K";  
 
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 3 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_3K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 5 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_5K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 10 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_10K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 50 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_50K"; 
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 100 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_100K";  
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 150 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_150K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 200 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_200K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 7 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 250 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_7CF_250K";

    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 3 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_3K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 5 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_5K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 10 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_10K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 50 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_50K"; 
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 100 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_100K";  
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 150 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_150K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 200 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_200K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 10 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 250 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_10CF_250K";

    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 3 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_3K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 5 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_5K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 10 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_10K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 50 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_50K"; 
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 100 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_100K";  
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 150 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_150K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 200 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_200K";
    $chemin_CPBPV -solvers CP_OPTIMIZER -locate $chemin_Programmes_while/Resultats/CE/$line/$line"_CECPBPV"/CE".ce" -NbFaultyCond 11 $chemin_Programmes_while/$line".java" -int_format 32 -arrays_length 128 -max_unfoldings 250 > $chemin_Programmes_while/Resultats/CP_OPTIMIZER/$line/$line"_Faults"/Faults_$line".faults_11CF_250K";
 

    /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 3 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_3K";
   /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 5 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_5K";
   /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 10 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_10K";
   /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 50 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_50K";
   /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 100 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_100K";
   /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 150 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_150K";
   /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 200 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_200K";
   /usr/bin/time -o  $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults" $chemin_BugAssit/bugassist $chemin_Programmes_whileBA/$line.c --function $line --unwind 250 --ba --maxsat $chemin_BugAssit/msuncore_20090525/bin/msuncore > $chemin_Programmes_whileBA/Resultats/$line/$line"_FaultsBA"/Faults_$line".faults_250K";
 

done < $chemin_Programmes_while/scriptes/Programmes_while.txt
