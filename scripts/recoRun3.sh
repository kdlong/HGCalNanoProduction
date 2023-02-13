dir=$(dirname "$0")
cmsDriver.py RECO -s RAW2DIGI,RECO,RECOSIM \
    --beamspot HLLHC14TeV \
    --conditions 126X_mcRun3_2023_forPU65_v1 \
    --datatier GEN-SIM-RECO \
    --eventcontent FEVTDEBUGHLT \
    --geometry DB:Extended \
    --era Run3 \
    --filein file:step2.root \
    --fileout file:dijet_RECO.root \
    --customise DPGAnalysis/PFNanoAOD/pfNano_cff.customizeOutputForPF \
    -n -1 \
    --nThreads 8
