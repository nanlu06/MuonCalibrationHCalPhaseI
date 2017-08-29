
from WMCore.Configuration import Configuration
config = Configuration()
config.section_("General")
config.General.requestName = "prod_HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV_v2_17234059ddf016650b1f2d0066d4baab_v1"
config.General.workArea = "crab_prod"

config.section_("JobType")
config.JobType.pluginName = "Analysis"
config.JobType.psetName = "prod.py"
config.JobType.allowUndistributedCMSSW = True

config.section_("Data")
config.Data.ignoreLocality = True
config.Data.inputDataset = "/DYToMuMu_M-20_13TeV_pythia8/PhaseISpring17DR-NoPU_90X_upgrade2017_realistic_v20-v1/GEN-SIM-RECO"
config.Data.splitting = "LumiBased"
config.Data.unitsPerJob = 100
config.Data.outputDatasetTag = "HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV_PhaseISpring17DR-NoPU_90X_upgrade2017_realistic_v20-v1_v2_v1"

config.section_("Site")
config.Site.storageSite = "T2_CH_CERN"
config.Data.outLFNDirBase = '/store/user/nlu/'
