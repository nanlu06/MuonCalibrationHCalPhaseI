import FWCore.ParameterSet.Config as cms
import os
process = cms.Process("RaddamMuon")

process.load("FWCore.MessageService.MessageLogger_cfi")
process.load("Configuration.StandardSequences.GeometryRecoDB_cff")
process.load("Configuration.StandardSequences.MagneticField_cff")
process.load("Configuration.StandardSequences.FrontierConditions_GlobalTag_cff")
process.GlobalTag.globaltag= '92X_dataRun2_Prompt_v4'

process.load("RecoLocalCalo.EcalRecAlgos.EcalSeverityLevelESProducer_cfi")

process.load("Calibration.HcalCalibAlgos.hcalHBHEMuon_cfi")
#process.HcalHBHEMuonAnalyzer.UnCorrect=True
process.HcalHBHEMuonAnalyzer.UseRaw =False
#process.HcalHBHEMuonAnalyzer.CollapseDepth =True
process.HcalHBHEMuonAnalyzer.MaxDepth = 7
process.HcalHBHEMuonAnalyzer.LabelHBHERecHit = 'hbheprereco'

if 'MessageLogger' in process.__dict__:
    process.MessageLogger.categories.append('HBHEMuon')

#process.MessageLogger = cms.Service(
#    "MessageLogger",
#    destinations = cms.untracked.vstring(
#        'detailedInfo',
#         'critical'
#         ),
#    detailedInfo = cms.untracked.PSet(
#        threshold = cms.untracked.string('DEBUG')
#         ),
#    debugModules = cms.untracked.vstring(
#        'myAnalysisModule',
#        'myOtherModule' 
#        )
#    )

process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(10) )
process.source = cms.Source("PoolSource",
    fileNames = cms.untracked.vstring(
	    'root://cms-xrd-global.cern.ch//store/data/Run2017B/SingleMuon/RECO/PromptReco-v1/000/297/050/00000/4400BA26-2356-E711-8008-02163E014758.root',
	    'root://cms-xrd-global.cern.ch//store/data/Run2017B/SingleMuon/RECO/PromptReco-v1/000/297/050/00000/4446BEA9-2356-E711-8383-02163E011993.root',
	    'root://cms-xrd-global.cern.ch//store/data/Run2017B/SingleMuon/RECO/PromptReco-v1/000/297/050/00000/445734EF-2456-E711-BA0A-02163E01A72A.root',

        )
                            )

process.TFileService = cms.Service("TFileService",
                                   fileName = cms.string("Validation.root")
)

process.p = cms.Path(process.HcalHBHEMuonAnalyzer)
