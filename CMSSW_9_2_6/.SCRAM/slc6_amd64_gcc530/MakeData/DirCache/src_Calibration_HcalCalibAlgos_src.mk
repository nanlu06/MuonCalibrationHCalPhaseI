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
