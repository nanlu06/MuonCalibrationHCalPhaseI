source MIPCaliProduction/cert.sh


cd  MIPCaliProduction


./setup.py --label HCalMIPCali_test4_data2017C_PromptReco2017 --version 3 --installation 'scram p CMSSW CMSSW_9_2_6;cd CMSSW_9_2_6/src; eval `scramv1 runtime -sh`; cp -r /afs/cern.ch/work/n/nlu/private/CMS/HCal/MIPCali_test/CMSSW_9_2_6/src/Calibration .; scram b clean; scram b -j9;cp Calibration/HcalCalibAlgos/test/hcalHBHEMuon_cfg_test.py ../../prod.py' --setup 'cd CMSSW_9_2_6/src; eval `scramv1 runtime -sh`;cd -' --admins "nlu" --dataset "/DoubleMuon/Run2017C-PromptReco-v1/RECO,/DoubleMuon/Run2017C-PromptReco-v2/RECO,/DoubleMuon/Run2017C-PromptReco-v3/RECO" --outsite "T2_CH_CERN"  --outpath "/store/user/nlu/"  --participants "nlu"

cd ../

./production.py --do start --label HCalMIPCali_test4_data2017C_PromptReco2017 --version 3
./production.py --do assign --arg nlu --label HCalMIPCali_test4_data2017C_PromptReco2017 --version 3
./production.py --do create --label HCalMIPCali_test4_data2017C_PromptReco2017 --version 3
./production.py --do submit --label HCalMIPCali_test4_data2017C_PromptReco2017 --version 3
./production.py --do collect --label HCalMIPCali_test4_data2017C_PromptReco2017 --version 3
