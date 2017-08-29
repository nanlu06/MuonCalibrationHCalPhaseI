ALL_SUBSYSTEMS+=Calibration
subdirs_src_Calibration = src_Calibration_HcalCalibAlgos
ALL_PACKAGES += Calibration/HcalCalibAlgos
subdirs_src_Calibration_HcalCalibAlgos := src_Calibration_HcalCalibAlgos_python src_Calibration_HcalCalibAlgos_plugins src_Calibration_HcalCalibAlgos_test src_Calibration_HcalCalibAlgos_src
ifeq ($(strip $(PyCalibrationHcalCalibAlgos)),)
PyCalibrationHcalCalibAlgos := self/src/Calibration/HcalCalibAlgos/python
src_Calibration_HcalCalibAlgos_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Calibration/HcalCalibAlgos/python)
PyCalibrationHcalCalibAlgos_files := $(patsubst src/Calibration/HcalCalibAlgos/python/%,%,$(wildcard $(foreach dir,src/Calibration/HcalCalibAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCalibrationHcalCalibAlgos_LOC_USE := self  
PyCalibrationHcalCalibAlgos_PACKAGE := self/src/Calibration/HcalCalibAlgos/python
ALL_PRODS += PyCalibrationHcalCalibAlgos
PyCalibrationHcalCalibAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCalibrationHcalCalibAlgos,src/Calibration/HcalCalibAlgos/python,src_Calibration_HcalCalibAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCalibrationHcalCalibAlgos,src/Calibration/HcalCalibAlgos/python))
endif
ALL_COMMONRULES += src_Calibration_HcalCalibAlgos_python
src_Calibration_HcalCalibAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Calibration_HcalCalibAlgos_python,src/Calibration/HcalCalibAlgos/python,PYTHON))
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
