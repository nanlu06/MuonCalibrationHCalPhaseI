ifeq ($(strip $(CalibrationHcalCalibAlgosPlugins)),)
CalibrationHcalCalibAlgosPlugins := self/src/Calibration/HcalCalibAlgos/plugins
PLUGINS:=yes
CalibrationHcalCalibAlgosPlugins_files := $(patsubst src/Calibration/HcalCalibAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Calibration/HcalCalibAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Calibration/HcalCalibAlgos/plugins/$(file). Please fix src/Calibration/HcalCalibAlgos/plugins/BuildFile.))))
CalibrationHcalCalibAlgosPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/Calibration/HcalCalibAlgos/plugins/BuildFile
CalibrationHcalCalibAlgosPlugins_LOC_USE := self  Calibration/HcalCalibAlgos CondFormats/HcalObjects CondFormats/L1TObjects DQMServices/Core DataFormats/Common DataFormats/DetId DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/HcalDigi DataFormats/HcalRecHit DataFormats/JetReco DataFormats/L1GlobalTrigger DataFormats/Math DataFormats/ParticleFlowReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/Records Geometry/CaloGeometry JetMETCorrections/Objects JetMETCorrections/Type1MET Geometry/CaloTopology CondTools/Hcal HLTrigger/HLTcore Calibration/IsolatedParticles rootphysics boost root DataFormats/CaloRecHit clhep hepmc CommonTools/UtilAlgos TrackPropagation/SteppingHelixPropagator TrackingTools/TrackAssociator
CalibrationHcalCalibAlgosPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CalibrationHcalCalibAlgosPlugins,CalibrationHcalCalibAlgosPlugins,$(SCRAMSTORENAME_LIB),src/Calibration/HcalCalibAlgos/plugins))
CalibrationHcalCalibAlgosPlugins_PACKAGE := self/src/Calibration/HcalCalibAlgos/plugins
ALL_PRODS += CalibrationHcalCalibAlgosPlugins
Calibration/HcalCalibAlgos_forbigobj+=CalibrationHcalCalibAlgosPlugins
CalibrationHcalCalibAlgosPlugins_INIT_FUNC        += $$(eval $$(call Library,CalibrationHcalCalibAlgosPlugins,src/Calibration/HcalCalibAlgos/plugins,src_Calibration_HcalCalibAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
CalibrationHcalCalibAlgosPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,CalibrationHcalCalibAlgosPlugins,src/Calibration/HcalCalibAlgos/plugins))
endif
ALL_COMMONRULES += src_Calibration_HcalCalibAlgos_plugins
src_Calibration_HcalCalibAlgos_plugins_parent := Calibration/HcalCalibAlgos
src_Calibration_HcalCalibAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Calibration_HcalCalibAlgos_plugins,src/Calibration/HcalCalibAlgos/plugins,PLUGINS))
