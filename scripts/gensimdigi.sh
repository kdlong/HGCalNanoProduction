dir=$(dirname "$0")
nPart=10
cmsDriver.py PFNanoProduction/Configuration/EndcapPartGun_cff.py \
    -s GEN,SIM,DIGI:pdigi_valid,L1TrackTrigger,L1,DIGI2RAW,HLT:@fake2 \
    --procModifier fineCalo \
    --beamspot HLLHC14TeV \
    --conditions auto:phase2_realistic_T21 \
    --datatier GEN-SIM-DIGI-RAW \
    --eventcontent FEVTDEBUGHLT \
    --geometry Extended2026D93 \
    --era Phase2C11I13M9 \
    --fileout file:step2.root \
    --python_filename ${dir}/../configs/EndcapPartGun_nPart${nPart}_cff.py \
    --customise DPGAnalysis/PFNanoAOD/pfNano_cff.customizeOutputForPF \
    --customise_commands "process.generator.PGunParameters.nParticles=${nPart}" \
    -n 8 \
    --nThreads 8
