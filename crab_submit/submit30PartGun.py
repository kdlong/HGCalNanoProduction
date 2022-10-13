from CRABClient.UserUtilities import config
config = config()

config.General.requestName = 'EndcapGun_30Part_E20To200_PFTruth'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True
config.General.transferLogs = True

config.JobType.numCores = 8
config.JobType.maxMemoryMB = 16000
config.JobType.pluginName = 'PrivateMC'
config.JobType.psetName = '../configs/EndcapPartGun_nPart30_GENToNANO_cff.py'
config.JobType.allowUndistributedCMSSW = True

config.Site.storageSite = 'T2_CH_CERN'
config.Data.outputPrimaryDataset = 'EndcapGun_30Part_E20To200'
config.Data.splitting = 'EventBased'
config.Data.unitsPerJob = 200
NJOBS = 200  # This is not a configuration parameter, but an auxiliary variable that we use in the nfailtest line.
config.Data.totalUnits = config.Data.unitsPerJob * NJOBS
config.Data.outLFNDirBase = '/store/group/phys_pf/ML4Reco' 
config.Data.publication = False
config.Data.outputDatasetTag = 'PFNANO_CMSSW_12_6_0_pre2'

config.Site.storageSite = 'T2_CH_CERN'
