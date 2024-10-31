TOP=../
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

INC += third_party.h

ifeq (linux-x86_64, $(findstring linux-x86_64, $(T_A)))
#LIB_INSTALLS    += ../os/linux-x86_64/libXXX.so

else ifeq (linux-x86, $(findstring linux-x86, $(T_A)))
#LIB_INSTALLS    += ../os/linux-x86/libXXX.so

else ifeq (linux-aarch64, $(findstring linux-aarch64, $(T_A)))
#LIB_INSTALLS    += ../os/linux-aarch64/libXXX.so

endif

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

