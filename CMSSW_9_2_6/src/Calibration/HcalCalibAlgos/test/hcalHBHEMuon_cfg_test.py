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

#if 'MessageLogger' in process.__dict__:
#    process.MessageLogger.categories.append('HBHEMuon')

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

process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(-1) )
process.source = cms.Source("PoolSource",
    fileNames = cms.untracked.vstring(
	    'root://cms-xrd-global.cern.ch//store/data/Run2017B/DoubleMuon/RECO/PromptReco-v2/000/298/678/00000/2850F04D-A466-E711-B32B-02163E01A616.root'

        )
                            )

process.TFileService = cms.Service("TFileService",
                                   fileName = cms.string("Validation_test.root")
)

process.p = cms.Path(process.HcalHBHEMuonAnalyzer)
