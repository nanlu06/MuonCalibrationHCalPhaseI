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
ifeq ($(strip $(Calibration/HcalCalibAlgos)),)
ALL_COMMONRULES += src_Calibration_HcalCalibAlgos_src
src_Calibration_HcalCalibAlgos_src_parent := Calibration/HcalCalibAlgos
src_Calibration_HcalCalibAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Calibration_HcalCalibAlgos_src,src/Calibration/HcalCalibAlgos/src,LIBRARY))
CalibrationHcalCalibAlgos := self/Calibration/HcalCalibAlgos
Calibration/HcalCalibAlgos := CalibrationHcalCalibAlgos
CalibrationHcalCalibAlgos_files := $(patsubst src/Calibration/HcalCalibAlgos/src/%,%,$(wildcard $(foreach dir,src/Calibration/HcalCalibAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CalibrationHcalCalibAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/Calibration/HcalCalibAlgos/BuildFile
CalibrationHcalCalibAlgos_LOC_USE := self  root rootgraphics rootminuit FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/Concurrency CommonTools/UtilAlgos DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/DetId DataFormats/HcalDigi DataFormats/HcalRecHit Geometry/CaloTopology Geometry/CaloGeometry Geometry/Records CondTools/Hcal
CalibrationHcalCalibAlgos_LCGDICTS  := x 
CalibrationHcalCalibAlgos_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CalibrationHcalCalibAlgos,src/Calibration/HcalCalibAlgos/src/classes.h,src/Calibration/HcalCalibAlgos/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
CalibrationHcalCalibAlgos_EX_LIB   := CalibrationHcalCalibAlgos
CalibrationHcalCalibAlgos_EX_USE   := $(foreach d,$(CalibrationHcalCalibAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibrationHcalCalibAlgos_PACKAGE := self/src/Calibration/HcalCalibAlgos/src
ALL_PRODS += CalibrationHcalCalibAlgos
CalibrationHcalCalibAlgos_CLASS := LIBRARY
Calibration/HcalCalibAlgos_forbigobj+=CalibrationHcalCalibAlgos
CalibrationHcalCalibAlgos_INIT_FUNC        += $$(eval $$(call Library,CalibrationHcalCalibAlgos,src/Calibration/HcalCalibAlgos/src,src_Calibration_HcalCalibAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
