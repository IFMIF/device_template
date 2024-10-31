TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE

# Build the IOC application, change the name here
LIBRARY_IOC = templateApp

# templateApp.dbd will be created and installed
DBD += templateApp.dbd

# templateApp.dbd will include these files:
templateApp_DBD += templateAppProcess.dbd
templateApp_DBD += base.dbd
templateApp_DBD += calcSupport.dbd

templateApp_SRCS += templateAppProcess.cpp

# Link in the code from our support library
templateApp_LIBS += calc

# Finally link IOC to the EPICS Base libraries
templateApp_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE