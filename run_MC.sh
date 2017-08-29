source MIPCaliProduction/cert.sh


cd  MIPCaliProduction


./setup.py --label HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV --version 2 --installation 'scram p CMSSW CMSSW_9_2_6;cd CMSSW_9_2_6/src; eval `scramv1 runtime -sh`; cp -r /afs/cern.ch/work/n/nlu/private/CMS/HCal/MIPCali_test/CMSSW_9_2_6/src/Calibration .; scram b clean; scram b -j9;cp Calibration/HcalCalibAlgos/test/hcalHBHEMuon_cfg_test.py ../../prod.py' --setup 'cd CMSSW_9_2_6/src; eval `scramv1 runtime -sh`;cd -' --admins "nlu" --dataset "/DYToMuMu_M-20_13TeV_pythia8/PhaseISpring17DR-NoPU_90X_upgrade2017_realistic_v20-v1/GEN-SIM-RECO,/DYToMuMu_M-20_13TeV_pythia8/PhaseISpring17DR-FlatPU28to62_90X_upgrade2017_realistic_v20-v1/GEN-SIM-RECO" --outsite "T2_CH_CERN"  --outpath "/store/user/nlu/"  --participants "nlu"

cd ../

./production.py --do start --label HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV --version 2
./production.py --do assign --arg nlu --label HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV --version 2
./production.py --do create --label HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV --version 2
./production.py --do submit --label HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV --version 2
./production.py --do collect --label HCalMIPCali_test1_17DR_DYToMuMu_M-20_13TeV --version 2
