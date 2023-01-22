dir=$(dirname "$0")
nPart=20
cmsDriver.py HGCalNanoProduction/Configuration/EndcapCloseByPartGun_cff.py \
    -s GEN,SIM,DIGI:pdigi_valid,L1TrackTrigger,L1,DIGI2RAW,HLT:@fake2,RAW2DIGI,RECO,RECOSIM,PFNANO:DPGAnalysis/HGCalNanoAOD/nanoHGCML_cff.nanoHGCMLRecoSequence \
    --conditions auto:phase2_realistic_T21 \
    --datatier NANOAODSIM \
    --eventcontent NANOAODSIM \
    --geometry Extended2026D92 \
    --era Phase2C17I13M9 \
    --python_filename ${dir}/../configs/EndcapCloseByPartGun_nPart${nPart}_GENToNANO_cff.py \
    --fileout nanoML.root \
    --customise_commands "process.generator.nParticles=${nPart}\\nprocess.hgcSimTruth.simClusters=\"closeBySimClusters\"" \
    -n 10 \
    --nThreads 1
    
    
# note no --procModifier fineCalo !