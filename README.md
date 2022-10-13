# HGCalNanoProduction

Scripts for production of pfNano/NanoML samples for HGCAL studies.

Some description of the PFNano format and setup is [this twiki](https://twiki.cern.ch/twiki/bin/viewauth/CMS/PfNanoAod).

Can run GEN/DIGI,RECO,PFNANO steps separately or in one shot. 

Example in CMSSW_12_6_0_pre2


```shell
cmsrel CMSSW_12_6_0_pre2
cd CMSSW_12_6_0_pre2/src
cmsenv
git cms-merge-topic cms-pepr:pepr_CMSSW_12_6_0_pre2
scram b -j8 # Or as many cores as ya got, it checks out a lot of stuff

git clone git@github.com:kdlong/HGCalNanoProduction.git
cd HGCalNanoProduction
scram b
bash scripts/genToNano.sh
```

To run separately, use the individual scripts, passing the output to the next script. Of course, the scripts can be made fancier to customize the inputs to the main particle gun at the gen step, for example.
