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
