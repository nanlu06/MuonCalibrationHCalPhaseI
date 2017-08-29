ifeq ($(strip $(CalibrationHcalCalibAlgosTest)),)
CalibrationHcalCalibAlgosTest := self/src/Calibration/HcalCalibAlgos/test
CalibrationHcalCalibAlgosTest_files := $(patsubst src/Calibration/HcalCalibAlgos/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Calibration/HcalCalibAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Calibration/HcalCalibAlgos/test/$(file). Please fix src/Calibration/HcalCalibAlgos/test/BuildFile.))))
CalibrationHcalCalibAlgosTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/Calibration/HcalCalibAlgos/test/BuildFile
CalibrationHcalCalibAlgosTest_LOC_USE := self  Calibration/HcalCalibAlgos SimDataFormats/Track CondFormats/HcalObjects CondFormats/L1TObjects DQMServices/Core DataFormats/Common DataFormats/DetId DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/HcalDigi DataFormats/HcalRecHit DataFormats/JetReco DataFormats/L1GlobalTrigger DataFormats/Math DataFormats/ParticleFlowReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/CaloGeometry Geometry/HcalTowerAlgo Geometry/Records JetMETCorrections/Objects JetMETCorrections/Type1MET Geometry/CaloTopology CondTools/Hcal HLTrigger/HLTcore Calibration/IsolatedParticles rootphysics boost root DataFormats/CaloRecHit SimDataFormats/GeneratorProducts clhep hepmc CommonTools/UtilAlgos TrackPropagation/SteppingHelixPropagator TrackingTools/TrackAssociator
CalibrationHcalCalibAlgosTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CalibrationHcalCalibAlgosTest,CalibrationHcalCalibAlgosTest,$(SCRAMSTORENAME_LIB),src/Calibration/HcalCalibAlgos/test))
CalibrationHcalCalibAlgosTest_PACKAGE := self/src/Calibration/HcalCalibAlgos/test
ALL_PRODS += CalibrationHcalCalibAlgosTest
CalibrationHcalCalibAlgosTest_INIT_FUNC        += $$(eval $$(call Library,CalibrationHcalCalibAlgosTest,src/Calibration/HcalCalibAlgos/test,src_Calibration_HcalCalibAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
CalibrationHcalCalibAlgosTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,CalibrationHcalCalibAlgosTest,src/Calibration/HcalCalibAlgos/test))
endif
ALL_COMMONRULES += src_Calibration_HcalCalibAlgos_test
src_Calibration_HcalCalibAlgos_test_parent := Calibration/HcalCalibAlgos
src_Calibration_HcalCalibAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Calibration_HcalCalibAlgos_test,src/Calibration/HcalCalibAlgos/test,TEST))
