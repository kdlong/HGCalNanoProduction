dir=$(dirname "$0")
cmsDriver.py RECO -s RAW2DIGI,RECO,RECOSIM \
    --beamspot HLLHC14TeV \
    --conditions auto:phase2_realistic_T21 \
    --datatier GEN-SIM-RECO \
    --eventcontent FEVTDEBUGHLT \
    --geometry Extended2026D77 \
    --era Phase2C11I13M9 \
    --filein file:GEN.root \
    --fileout file:RECO.root \
    --python_filename ${dir}/../configs/EndcapPartGun_nPart${nPart}_RECO_cff.py \
    --customise DPGAnalysis/PFNanoAOD/pfNano_cff.customizeOutputForPF \
    -n -1 \
    --nThreads 8
