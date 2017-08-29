
from WMCore.Configuration import Configuration
config = Configuration()
config.section_("General")
config.General.requestName = "prod_HCalMIPCali_test3_17DR_DYToMuMu_M-20_13TeV_v2_254d34c14d652bf48c4373944c89d2bd_v1"
config.General.workArea = "crab_prod"

config.section_("JobType")
config.JobType.pluginName = "Analysis"
config.JobType.psetName = "prod.py"
config.JobType.allowUndistributedCMSSW = True

config.section_("Data")
config.Data.ignoreLocality = True
config.Data.inputDataset = "/PhaseISpring17DR/DYToMuMu_M-20_13TeV_pythia8/GEN-SIM-RECO"
config.Data.lumiMask = 'dataJSON/Cert_294927-299649_13TeV_PromptReco_Collisions17_JSON.txt'
config.Data.splitting = "LumiBased"
config.Data.unitsPerJob = 100
config.Data.outputDatasetTag = "HCalMIPCali_test3_17DR_DYToMuMu_M-20_13TeV_DYToMuMu_M-20_13TeV_pythia8_v2_v1"

config.section_("Site")
config.Site.storageSite = "T2_CH_CERN"
config.Data.outLFNDirBase = '/store/user/nlu/'
