dir=$(dirname "$0")
 cmsDriver.py NANO \
    -s PFNANO:DPGAnalysis/HGCalNanoAOD/nanoHGCML_cff.nanoHGCMLRecoSequence \
    --conditions auto:phase2_realistic_T21 \
    --datatier NANOAODSIM \
    --eventcontent NANOAODSIM \
    --geometry Extended2026D77 \
    --era Phase2C11I13M9 \
    --python_filename ${dir}/../configs/EndcapPartGun_nPart${nPart}_NANO_cff.py \
    --filein  file:RECO.root \
    --fileout nanoML.root 

