dir=$(dirname "$0")
nPart=10
cmsDriver.py HGCalNanoProduction/Configuration/dijet_cff.py \
    -s GEN,SIM,DIGI,L1,DIGI2RAW,HLT:2022v15 \
    --conditions 126X_mcRun3_2023_forPU65_v1 \
    --datatier GEN-SIM-DIGI-RAW \
    --eventcontent FEVTDEBUGHLT \
    --geometry DB:Extended \
    --era Run3 \
    --fileout file:step2.root \
    --python_filename ${dir}/../configs/dijet_cff.py \
    --customise DPGAnalysis/PFNanoAOD/pfNano_cff.customizeOutputForPF \
    -n 8 \
    --nThreads 8
