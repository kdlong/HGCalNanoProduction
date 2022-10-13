dir=$(dirname "$0")
nPart=30
cmsDriver.py HGCalNanoProduction/Configuration/EndcapPartGun_cff.py \
    -s GEN,SIM,DIGI:pdigi_valid,L1TrackTrigger,L1,DIGI2RAW,HLT:@fake2,RAW2DIGI,RECO,RECOSIM,PFNANO:DPGAnalysis/HGCalNanoAOD/nanoHGCML_cff.nanoHGCMLRecoSequence \
    --procModifier fineCalo \
    --conditions auto:phase2_realistic_T21 \
    --datatier NANOAODSIM \
    --eventcontent NANOAODSIM \
    --geometry Extended2026D92 \
    --era Phase2C17I13M9 \
    --python_filename ${dir}/../configs/EndcapPartGun_nPart${nPart}_GENToNANO_cff.py \
    --fileout nanoML.root \
    --customise_commands "process.generator.PGunParameters.nParticles=${nPart}" \
    -n 32 \
    --nThreads 8
