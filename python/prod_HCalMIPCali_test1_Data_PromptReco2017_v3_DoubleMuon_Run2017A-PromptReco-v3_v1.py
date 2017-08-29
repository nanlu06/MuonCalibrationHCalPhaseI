
from WMCore.Configuration import Configuration
config = Configuration()
config.section_("General")
config.General.requestName = "prod_HCalMIPCali_test1_Data_PromptReco2017_v3_58ed16b0f457a30d234ba03ca07417da_v1"
config.General.workArea = "crab_prod"

config.section_("JobType")
config.JobType.pluginName = "Analysis"
config.JobType.psetName = "prod.py"
config.JobType.allowUndistributedCMSSW = True

config.section_("Data")
config.Data.ignoreLocality = True
config.Data.inputDataset = "/DoubleMuon/Run2017A-PromptReco-v3/RECO"
config.Data.lumiMask = 'dataJSON/Cert_294927-299649_13TeV_PromptReco_Collisions17_JSON.txt'
config.Data.splitting = "LumiBased"
config.Data.unitsPerJob = 100
config.Data.outputDatasetTag = "HCalMIPCali_test1_Data_PromptReco2017_Run2017A-PromptReco-v3_v3_v1"

config.section_("Site")
config.Site.storageSite = "T2_CH_CERN"
config.Data.outLFNDirBase = '/store/user/nlu/'
