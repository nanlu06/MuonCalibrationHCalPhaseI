// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIslc6_amd64_gcc530dIsrcdICalibrationdIHcalCalibAlgosdIsrcdICalibrationHcalCalibAlgosdIadICalibrationHcalCalibAlgos_xr

/*******************************************************************/
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define G__DICTIONARY
#include "RConfig.h"
#include "TClass.h"
#include "TDictAttributeMap.h"
#include "TInterpreter.h"
#include "TROOT.h"
#include "TBuffer.h"
#include "TMemberInspector.h"
#include "TInterpreter.h"
#include "TVirtualMutex.h"
#include "TError.h"

#ifndef G__ROOT
#define G__ROOT
#endif

#include "RtypesImp.h"
#include "TIsAProxy.h"
#include "TFileMergeInfo.h"
#include <algorithm>
#include "TCollectionProxyInfo.h"
/*******************************************************************/

#include "TDataMember.h"

// Since CINT ignores the std namespace, we need to do so in this file.
namespace std {} using namespace std;

// Header files passed as explicit arguments
#include "src/Calibration/HcalCalibAlgos/src/classes.h"

// Header files passed via #pragma extra_include

namespace ROOT {
   static void *new_TCell(void *p = 0);
   static void *newArray_TCell(Long_t size, void *p);
   static void delete_TCell(void *p);
   static void deleteArray_TCell(void *p);
   static void destruct_TCell(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::TCell*)
   {
      ::TCell *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::TCell >(0);
      static ::ROOT::TGenericClassInfo 
         instance("TCell", ::TCell::Class_Version(), "Calibration/HcalCalibAlgos/src/TCell.h", 15,
                  typeid(::TCell), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::TCell::Dictionary, isa_proxy, 4,
                  sizeof(::TCell) );
      instance.SetNew(&new_TCell);
      instance.SetNewArray(&newArray_TCell);
      instance.SetDelete(&delete_TCell);
      instance.SetDeleteArray(&deleteArray_TCell);
      instance.SetDestructor(&destruct_TCell);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::TCell*)
   {
      return GenerateInitInstanceLocal((::TCell*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_(Init) = GenerateInitInstanceLocal((const ::TCell*)0x0); R__UseDummy(_R__UNIQUE_(Init));
} // end of namespace ROOT

//______________________________________________________________________________
atomic_TClass_ptr TCell::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *TCell::Class_Name()
{
   return "TCell";
}

//______________________________________________________________________________
const char *TCell::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TCell*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int TCell::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TCell*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *TCell::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TCell*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *TCell::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD2(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TCell*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
void TCell::Streamer(TBuffer &R__b)
{
   // Stream an object of class TCell.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(TCell::Class(),this);
   } else {
      R__b.WriteClassBuffer(TCell::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_TCell(void *p) {
      return  p ? new(p) ::TCell : new ::TCell;
   }
   static void *newArray_TCell(Long_t nElements, void *p) {
      return p ? new(p) ::TCell[nElements] : new ::TCell[nElements];
   }
   // Wrapper around operator delete
   static void delete_TCell(void *p) {
      delete ((::TCell*)p);
   }
   static void deleteArray_TCell(void *p) {
      delete [] ((::TCell*)p);
   }
   static void destruct_TCell(void *p) {
      typedef ::TCell current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::TCell

namespace {
  void TriggerDictionaryInitialization_CalibrationHcalCalibAlgos_xr_Impl() {
    static const char* headers[] = {
0    };
    static const char* includePaths[] = {
"/afs/cern.ch/work/n/nlu/private/CMS/HCal/MIPCali/MIPCaliJobs/CMSSW_9_2_6/src",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/cms/cmssw/CMSSW_9_2_6/src",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/cms/coral/CORAL_2_3_21-njopjo2/include/LCG",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/lcg/root/6.08.07/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/boost/1.63.0-mlhled2/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/pcre/8.37-oenich/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/bz2lib/1.0.6/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/clhep/2.3.4.2-mlhled2/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/gsl/2.2.1/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/libuuid/2.22.2/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/openssl/1.0.2d/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/python/2.7.11-mlhled2/include/python2.7",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/sigcpp/2.6.2-oenich/include/sigc++-2.0",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/tbb/2017_20161004oss/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/xerces-c/3.1.3/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/xz/5.2.1-oenich/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/zlib-x86_64/1.2.11/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/md5/1.0.0/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/external/tinyxml/2.5.3-mlhled2/include",
"/cvmfs/cms.cern.ch/slc6_amd64_gcc530/lcg/root/6.08.07/include",
"/afs/cern.ch/work/n/nlu/private/CMS/HCal/MIPCali/MIPCaliJobs/CMSSW_9_2_6/",
0
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "CalibrationHcalCalibAlgos_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_Autoloading_Map;
class __attribute__((annotate("$clingAutoload$Calibration/HcalCalibAlgos/src/TCell.h")))  TCell;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "CalibrationHcalCalibAlgos_xr dictionary payload"

#ifndef G__VECTOR_HAS_CLASS_ITERATOR
  #define G__VECTOR_HAS_CLASS_ITERATOR 1
#endif
#ifndef CMS_DICT_IMPL
  #define CMS_DICT_IMPL 1
#endif
#ifndef _REENTRANT
  #define _REENTRANT 1
#endif
#ifndef GNUSOURCE
  #define GNUSOURCE 1
#endif
#ifndef __STRICT_ANSI__
  #define __STRICT_ANSI__ 1
#endif
#ifndef GNU_GCC
  #define GNU_GCC 1
#endif
#ifndef _GNU_SOURCE
  #define _GNU_SOURCE 1
#endif
#ifndef CMSSW_GIT_HASH
  #define CMSSW_GIT_HASH "CMSSW_9_2_6"
#endif
#ifndef PROJECT_NAME
  #define PROJECT_NAME "CMSSW"
#endif
#ifndef PROJECT_VERSION
  #define PROJECT_VERSION "CMSSW_9_2_6"
#endif
#ifndef TBB_USE_GLIBCXX_VERSION
  #define TBB_USE_GLIBCXX_VERSION 50300
#endif
#ifndef BOOST_SPIRIT_THREADSAFE
  #define BOOST_SPIRIT_THREADSAFE 1
#endif
#ifndef PHOENIX_THREADSAFE
  #define PHOENIX_THREADSAFE 1
#endif
#ifndef CMSSW_REFLEX_DICT
  #define CMSSW_REFLEX_DICT 1
#endif

#define _BACKWARD_BACKWARD_WARNING_H
#include "Calibration/HcalCalibAlgos/src/TCell.h"

namespace Calibration_HcalCalibAlgos {
  struct dictionary {
  };
}

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[]={
"TCell", payloadCode, "@",
nullptr};

    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("CalibrationHcalCalibAlgos_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_CalibrationHcalCalibAlgos_xr_Impl, {}, classesHeaders);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_CalibrationHcalCalibAlgos_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_CalibrationHcalCalibAlgos_xr() {
  TriggerDictionaryInitialization_CalibrationHcalCalibAlgos_xr_Impl();
}
