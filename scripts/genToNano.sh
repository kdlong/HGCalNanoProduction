dir=$(dirname "$0")
nPart=10
cmsDriver.py PFNanoProduction/Configuration/EndcapPartGun_cff.py \
    -s GEN,SIM,DIGI:pdigi_valid,L1TrackTrigger,L1,DIGI2RAW,HLT:@fake2,RAW2DIGI,RECO,RECOSIM,PFNANO:DPGAnalysis/HGCalNanoAOD/nanoHGCML_cff.nanoHGCMLRecoSequence \
    --conditions auto:phase2_realistic_T21 \
    --datatier NANOAODSIM \
    --eventcontent NANOAODSIM \
    --geometry Extended2026D77 \
    --era Phase2C11I13M9 \
    --python_filename ${dir}/../configs/EndcapPartGun_nPart${nPart}_GENToNANO_cff.py \
    --fileout nanoML.root \
    --customise_commands "process.generator.PGunParameters.nParticles=${nPart}" \
    -n 8 \
    --nThreads 8
